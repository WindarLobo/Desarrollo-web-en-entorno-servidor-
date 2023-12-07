using Amazon_Montecastelo.Database.Models;

namespace Amazon_Montecastelo.Database.Interface
{
    public interface ICarritoRepository
    {

        Task<Carrito> Guardar(Carrito carrito);
        Task<Carrito> ObtenerCarrito(int UsuarioID);
        Task EliminarProdcutoDelCarrito(int? ProductoID);
         Task EliminarDelCarrito(int CarritoId);
    }
}
