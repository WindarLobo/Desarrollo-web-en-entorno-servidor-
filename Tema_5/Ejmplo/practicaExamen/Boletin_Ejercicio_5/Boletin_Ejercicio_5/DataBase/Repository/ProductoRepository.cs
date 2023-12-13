using Boletin_Ejercicio_5.DataBase.Models;
using Dapper;

namespace Boletin_Ejercicio_5.DataBase.Repository
{
    public interface IProductoRepository
    {
        Task<IEnumerable<Producto>> GetAllProducto();
        Task<Producto> GetProducto(int ProductoId);
        Task<IEnumerable<Producto>> Filtrar(string? nombre, decimal? precioDesde, decimal? precioHasta);
        Task DeleteProducto(int? ProductoID);
        Task CreateProducto(Producto producto);
        Task UpdateProducto(Producto producto);

    }


    public class ProductoRepository : IProductoRepository
    {
        private readonly Conexion _conexion;

        public ProductoRepository(Conexion conexion)
        {
            _conexion = conexion;
        }

        public async Task<IEnumerable<Producto>> GetAllProducto()
        {
            var queryProducto = @"SELECT * from producto";

            using var connection = _conexion.ObtenerConexion();
            return await connection.QueryAsync<Producto>(queryProducto);
        }

        public async Task<Producto> GetProducto(int ProductoId)
        {
            var query = @"SELECT *
                     from Producto Where  codigo = @ProductoId ";
            using var connection = _conexion.ObtenerConexion();
            return await connection.QuerySingleAsync<Producto>(query, new { ProductoId });
        }


        public async Task<IEnumerable<Producto>> Filtrar(string? nombre, decimal? precioDesde, decimal? precioHasta)
        {
            var sqlQuery = "SELECT * FROM Producto WHERE 1 = 1 ";

            using var conexion = _conexion.ObtenerConexion();

            if (nombre is not null)
            {
                sqlQuery += " AND Nombre LIKE @nombre";
            }

            if (precioDesde is not null)
            {
                sqlQuery += " AND Precio >= @precioDesde";
            }

            if (precioHasta is not null)
            {
                sqlQuery += " AND Precio >= @precioHasta";
            }



            return await conexion.QueryAsync<Producto>(sqlQuery, new { nombre, precioDesde, precioHasta });
        }
        public async Task DeleteProducto(int? ProductoID)
        {
            var query = @"Delete from Producto  WHERE codigo = @ProductoID ";
            using var connection = _conexion.ObtenerConexion();
            await connection.ExecuteAsync(query, new { ProductoID });
        }

        public async Task CreateProducto(Producto producto)
        {

            var query = @"Insert into Producto (nombre,precio,codigo_fabricante) Values (@nombre,@precio,@codigo_fabricante)";
            using var connection = _conexion.ObtenerConexion();
            await connection.ExecuteAsync(query, new { producto.Nombre, producto.Precio, producto.Codigo_Fabricante });

        }

        public async Task UpdateProducto(Producto producto)
        {
            var queryProducto = @"UPDATE Producto
                SET nombre = @nombre,
                    precio = @precio,
                    codigo_fabricante = @codigo_fabricante
                WHERE codigo = @codigo";


            using var connection = _conexion.ObtenerConexion();

            await connection.ExecuteAsync(queryProducto, new { producto.Nombre, producto.Precio, producto.Codigo_Fabricante, producto.Codigo });

        }
       
    }
}

