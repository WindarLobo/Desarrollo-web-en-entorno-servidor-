using Amazon_Montecastelo.Database.Models;
using Dapper;
using System.Data;


namespace Amazon_Montecastelo.Database.Repositorios
{
    public class AmazonRepository : IAmazonRespotiory
    {


        private readonly Conexion _conexion;

        public AmazonRepository(Conexion conexion)
        {
            _conexion = conexion;
        }


        public async Task<IEnumerable<Productos>> GetAllProducto()
        {
            var query = @"SELECT * from Productos";

            using var connection = _conexion.ObtenerConexion();
            return await connection.QueryAsync<Productos>(query);
        }

        public async Task<Productos> GetProducto(int ProductoId)
        {
            var query = @"SELECT * 
                         from Productos Where  ProductoID = @ProductoId ";
            using var connection = _conexion.ObtenerConexion();
            return await connection.QuerySingleAsync<Productos>(query, new { ProductoId });
        }

        public async Task CreateProducto(Productos producto)
        {

            var query = @"Insert into Productos (Precio,Descripcion,Nombre) Values (@Precio,@Descripcion,@Nombre)";
            var parameters = new DynamicParameters();
            parameters.Add("Precio", producto.Precio, DbType.Decimal);
            parameters.Add("Descripcion", producto.Descripcion, DbType.String);
            parameters.Add("Nombre", producto.Nombre, DbType.String);
            using var connection = _conexion.ObtenerConexion();
            await connection.ExecuteAsync(query, parameters);

        }

        public async Task UpdateProducto(Productos producto)
        {
            var query = @"UPDATE Productos
                SET Descripcion = @Descripcion,
                    Nombre = @Nombre,
                    Precio = @Precio
                WHERE ProductoID = @ProductoID";
            var parameters = new DynamicParameters();
            parameters.Add("@Descripcion", producto.Descripcion, DbType.String);
            parameters.Add("@Nombre", producto.Nombre, DbType.String);
            parameters.Add("@Precio", producto.Precio, DbType.Decimal);
            parameters.Add("@ProductoID", producto.ProductoID, DbType.Int32);
            using var connection = _conexion.ObtenerConexion();
            await connection.ExecuteAsync(query, parameters);

        }
        public async Task DeleteProducto(int? ProductoID)
        {
            var query = @"Delete from Productos  WHERE ProductoID = @ProductoID ";
            using var connection = _conexion.ObtenerConexion();
            await connection.ExecuteAsync(query, new { ProductoID });
        }

        public async Task<IEnumerable<Usuario>> GetAllUsuario()
        {
            var query = @"SELECT * from usuarios";

            using var connection = _conexion.ObtenerConexion();
            return await connection.QueryAsync<Usuario>(query);
        }

        public async Task<Usuario> GetUsuarioId(int? UsuarioID)
        {
            var query = @"Select * from usuarios where UsuarioID = @UsuarioID";
            using var connection = _conexion.ObtenerConexion();
            return await connection.QueryFirstOrDefaultAsync<Usuario>(query, new { UsuarioID });

        }


        public async Task<Usuario> GetLoginUsernamePassword(string Email, string Contrasena)
        {
            var query = "SELECT * FROM Usuarios WHERE Email = @Email AND Contrasena = @Contrasena";

            using (var connection = _conexion.ObtenerConexion())
            {
                var parameters = new { Email, Contrasena };

                return await connection.QueryFirstOrDefaultAsync<Usuario>(query, parameters);
            }
        }

        public async Task CreateUsuarioo(Usuario usuario)
        {

            var query = @"Insert into Usuarios (NombreUsuario,Contrasena,Email) Values (@NombreUsuario,@Contrasena,@Email)";
            var parameters = new DynamicParameters();
            parameters.Add("NombreUsuario", usuario.NombreUsuario, DbType.String);
            parameters.Add("Contrasena", usuario.Contrasena, DbType.String);
            parameters.Add("Email", usuario.Email, DbType.String);
            using var connection = _conexion.ObtenerConexion();
            await connection.ExecuteAsync(query, parameters);

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
    }
}
