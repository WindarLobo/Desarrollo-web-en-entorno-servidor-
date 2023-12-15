using Dapper;
using Pactica5.Database.Models;
using Pactica5.DataBase.Models;

namespace Pactica5.DataBase.Repository
{
    public interface IVentaRepository
    {

        Task<Venta> Guardar(Venta venta);
        Task<Venta> ObtenerVenta(int UsuarioID);
        Task EliminarDelaVenta(int? ProductoID);
    }
    public class VentaRepository : IVentaRepository
    {
        private readonly Conexion _conexion;

        public VentaRepository(Conexion conexion)
        {
            _conexion = conexion;
        }

        public async Task EliminarDelaVenta(int? ProductoID)
        {
            var deleteVenta = @"Delete from DetallesVenta  WHERE ProductoID = @ProductoID ";
            using var connection = _conexion.ObtenerConexion();

            await connection.ExecuteAsync(deleteVenta, new { ProductoID });
        }

        public async Task<Venta> Guardar(Venta venta)
        {
            if (venta.VentaId == 0)
            {

                var queryVenta = @"INSERT INTO Ventas (UsuarioID,FechaVenta,totalVenta) VALUES (@UsuarioID,@FechaVenta,@totalVenta)
                                  SELECT CAST(SCOPE_IDENTITY() as int)";


                var queryVentaDetalle = @"INSERT INTO DetallesVenta (VentaID,ProductoID,Cantidad,PrecioUnitario,PrecioTotal) 
                                           VALUES (@VentaID,@ProductoID,@Cantidad,@PrecioUnitario,@PrecioTotal)";

                using var connection = _conexion.ObtenerConexion();

                venta.VentaId = await connection.ExecuteScalarAsync<int>(queryVenta, venta);

                foreach (var detalle in venta.Detalles)
                {
                    detalle.VentaID = venta.VentaId;
                }

                await connection.ExecuteAsync(queryVentaDetalle, venta.Detalles);

            }
            else
            {
                var deleteCarrito = @"Delete from DetallesVenta  WHERE VentaID = @VentaID ";

                var queryVentaDetalle = @"INSERT INTO DetallesVenta (VentaID,ProductoID,Cantidad,PrecioUnitario,PrecioTotal) 
                                           VALUES (@VentaID,@ProductoID,@Cantidad,@PrecioUnitario,@PrecioTotal)";

                using var connection = _conexion.ObtenerConexion();

                await connection.ExecuteAsync(deleteCarrito, new { venta.VentaId });

                foreach (var detalle in venta.Detalles)
                {
                    detalle.VentaID = venta.VentaId;
                }

                await connection.ExecuteAsync(queryVentaDetalle, venta.Detalles);
            }

            return venta;

        }


        public async Task<Venta> ObtenerVenta(int UsuarioID)
        {
            var queryVenta = @"SELECT
                                   VentaID,
                                   FechaVenta,
                                   totalVenta,
                                   UsuarioID
                                FROM Ventas 
                                   WHERE Ventas.UsuarioID = @UsuarioID";


            var queryDetalle = @"SELECT  
                                       Cantidad ,
                                       PrecioUnitario ,
                                       PrecioTotal ,
                                       ProductoId
                                    FROM DetallesVenta 
                                        WHERE VentaID = @VentaID";

            var queryProducto = @"SELECT * 
                                          FROM productos
                                            where ProductoID= @ProductoID ";

            using var connection = _conexion.ObtenerConexion();
            var venta = await connection.QueryFirstOrDefaultAsync<Venta>(queryVenta, new { UsuarioID });

            if (venta == null)
            {
                venta = new Venta()
                {
                    FechaVenta = DateTime.Now,
                    UsuarioID = UsuarioID,
                    Detalles = new List<DetalleVenta>()
                };
            }
            else
            {
                venta.Detalles = (await connection.QueryAsync<DetalleVenta>(queryDetalle, new { VentaID = venta.VentaId })).ToList();


                foreach (var detalle in venta.Detalles)
                {
                    detalle.Producto = await connection.QuerySingleAsync<Producto>(queryProducto, new { detalle.ProductoID });
                }

            }

            return venta;
        }

    }
}

