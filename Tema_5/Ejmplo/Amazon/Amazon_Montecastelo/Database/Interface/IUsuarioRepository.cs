using Amazon_Montecastelo.Database.Models;

namespace Amazon_Montecastelo.Database.Interface
{
    public interface IUsuarioRepository
    {
        Task<IEnumerable<Usuario>> GetAllUsuario();
        Task<Usuario> GetUsuarioId(int? UsuarioID);
        Task<Usuario> GetLoginUsernamePassword(string Email, string Contrasena);
        Task CreateUsuarioo(Usuario usuario);
    }
}
