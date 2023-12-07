using Amazon_Montecastelo.Database.Interface;
using Amazon_Montecastelo.Database.Models;
using Dapper;

namespace Amazon_Montecastelo.Database.Repositorios
{
    public  class CarritoRepository : ICarritoRepository
    {
        private readonly Conexion _conexion;

        public CarritoRepository(Conexion conexion)
        {
            _conexion = conexion;
        }
        public async Task<Carrito> Guardar(Carrito carrito)
        {
            if (carrito.CarritoID == 0)
            {

                var queryCarrito = @"INSERT INTO Carrito (UsuarioID,FechaCarrito,totalVenta) VALUES (@UsuarioID,@FechaCarrito,@totalVenta)
                                  SELECT CAST(SCOPE_IDENTITY() as int)";


                var queryCarritoDetalle = @"INSERT INTO DetallesCarrito (CarritoID,ProductoID,Cantidad,PrecioUnitario,PrecioTotal) 
                                           VALUES (@CarritoID,@ProductoID,@Cantidad,@PrecioUnitario,@PrecioTotal)";

                using var connection = _conexion.ObtenerConexion();

                carrito.CarritoID = await connection.ExecuteScalarAsync<int>(queryCarrito, carrito);

                foreach (var detalle in carrito.Detalles)
                {
                    detalle.CarritoID = carrito.CarritoID;
                }

                await connection.ExecuteAsync(queryCarritoDetalle, carrito.Detalles);

            }
            else
            {
                var deleteCarrito = @"Delete from DetallesCarrito  WHERE CarritoID = @CarritoID ";

                var queryCarritoDetalle = @"INSERT INTO DetallesCarrito (CarritoID,ProductoID,Cantidad,PrecioUnitario,PrecioTotal) 
                                          VALUES (@CarritoID,@ProductoID,@Cantidad,@PrecioUnitario,@PrecioTotal)";

                using var connection = _conexion.ObtenerConexion();

                await connection.ExecuteAsync(deleteCarrito, new { carrito.CarritoID });

                foreach (var detalle in carrito.Detalles)
                {
                    detalle.CarritoID = carrito.CarritoID;
                }

                await connection.ExecuteAsync(queryCarritoDetalle, carrito.Detalles);
            }

            return carrito;
        }
        public async Task<Carrito> ObtenerCarrito(int UsuarioID)
        {
            var queryCarrito = @"SELECT
                                  CarritoID,
                                   FechaCarrito,
                                  totalVenta,

                                UsuarioId
                                    FROM Carrito 
                                WHERE Carrito.UsuarioID = @UsuarioID";


            var queryDetalle = @"  select  
 
                            detalle.Cantidad AS Cantidad,
                            detalle.PrecioUnitario AS PrecioUnitario,
                            detalle.PrecioTotal AS PrecioTotal,
                            detalle.ProductoId As ProductoID

                        FROM DetallesCarrito detalle

                        WHERE detalle.CarritoID = @CarritoID";

            var queryProducto = @"select * from productos where ProductoID= @ProductoID ";

            using var connection = _conexion.ObtenerConexion();
            var carrito = await connection.QueryFirstOrDefaultAsync<Carrito>(queryCarrito, new { UsuarioID });

            if (carrito == null)
            {
                carrito = new Carrito()
                {
                    FechaCarrito = DateTime.Now,
                    UsuarioID = UsuarioID,
                    Detalles = new List<DetalleCarrito>()
                };
            }
            else
            {
                carrito.Detalles = (await connection.QueryAsync<DetalleCarrito>(queryDetalle, new { carrito.CarritoID })).ToList();

                foreach (var detalle in carrito.Detalles)
                {
                    detalle.Producto = await connection.QuerySingleAsync<Productos>(queryProducto, new { detalle.ProductoID });
                }

            }

            return carrito;
        }

        public async Task EliminarProdcutoDelCarrito(int? ProductoID)
        {
            var deleteCarrito = @"Delete from DetallesCarrito  WHERE ProductoID = @ProductoID ";
            using var connection = _conexion.ObtenerConexion();

            await connection.ExecuteAsync(deleteCarrito, new { ProductoID });
        }

        public async Task EliminarDelCarrito(int  CarritoId)
        {
            var deleteDetalleCarrito = @"Delete from DetallesCarrito  WHERE CarritoID = @CarritoId ";

            var deleteCarrito = @"Delete from Carrito  WHERE CarritoID = @CarritoId ";

            using var connection = _conexion.ObtenerConexion();
            await connection.ExecuteAsync(deleteDetalleCarrito, new { CarritoId });

            await connection.ExecuteAsync(deleteCarrito, new { CarritoId });

        }
    }
}
