using Amazon_Montecastelo.Database.Models;

namespace Amazon_Montecastelo.Database.Repositorios
{
    public interface IAmazonRespotiory
    {

        Task<IEnumerable<Productos>> GetAllProducto();
        Task<Productos> GetProducto(int ProductoId);
        Task CreateProducto(Productos producto);
        Task UpdateProducto(Productos producto);
        Task DeleteProducto(int ? ProductoID);
        Task<IEnumerable<Usuario>> GetAllUsuario();
        Task<Usuario> GetUsuarioId(int? UsuarioID);
        Task<Usuario> GetLoginUsernamePassword(string Email, string Contrasena);
        Task CreateUsuarioo(Usuario usuario);
        Task<Carrito> Guardar(Carrito carrito);
        Task<Carrito>ObtenerCarrito(int UsuarioID);

    }
}
