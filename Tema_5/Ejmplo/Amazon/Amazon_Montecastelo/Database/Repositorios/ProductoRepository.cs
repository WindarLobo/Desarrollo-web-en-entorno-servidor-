
using Amazon_Montecastelo.Database.Models;
using Dapper;


namespace Amazon_Montecastelo.Database.Repositorios
{
    public interface IProductoRepository
    {

        Task<IEnumerable<Productos>> GetAllProducto();
        Task<Productos> GetProducto(int ProductoId);
        Task CreateProducto(Productos producto);
        Task UpdateProducto(Productos producto);
        Task DeleteProducto(int? ProductoID);
        Task<IEnumerable<Productos>> Filtrar(string? nombre, decimal? precioDesde, decimal? precioHasta);


    }
    public class ProductoRepository : IProductoRepository
    {


        private readonly Conexion _conexion;

        public ProductoRepository(Conexion conexion)
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
            using var connection = _conexion.ObtenerConexion();
            await connection.ExecuteAsync(query, new { producto.Nombre, producto.Descripcion, producto.Precio  });

        }

        public async Task UpdateProducto(Productos producto)
        {
            var queryProducto = @"UPDATE Productos
                SET Descripcion = @Descripcion,
                    Nombre = @Nombre,
                    Precio = @Precio
                WHERE ProductoID = @ProductoID";
         
         
            using var connection = _conexion.ObtenerConexion();

           await connection.ExecuteAsync(queryProducto, new { producto.Descripcion,producto.Nombre, producto.Precio,producto.ProductoID  });
        
    }
        public async Task DeleteProducto(int? ProductoID)
        {
            var query = @"Delete from Productos  WHERE ProductoID = @ProductoID ";
            using var connection = _conexion.ObtenerConexion();
            await connection.ExecuteAsync(query, new { ProductoID });
        }

        public async Task<IEnumerable<Productos>> Filtrar(string? nombre, decimal? precioDesde, decimal? precioHasta)
        {
            var sqlQuery = "SELECT * FROM Productos WHERE 1 = 1 ";

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
                sqlQuery += " AND Precio <= @precioHasta";
            }

            return await conexion.QueryAsync<Productos>(sqlQuery,new {nombre,precioDesde,precioHasta});
        }

    }
}
