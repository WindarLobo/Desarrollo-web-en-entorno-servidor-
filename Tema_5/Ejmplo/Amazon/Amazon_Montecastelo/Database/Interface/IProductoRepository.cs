using Amazon_Montecastelo.Database.Models;

namespace Amazon_Montecastelo.Database.Interface
{
    public interface IProductoRepository
    {

        Task<IEnumerable<Productos>> GetAllProducto();
        Task<Productos> GetProducto(int ProductoId);
        Task CreateProducto(Productos producto);
        Task UpdateProducto(Productos producto);
        Task DeleteProducto(int? ProductoID);


    }
}
