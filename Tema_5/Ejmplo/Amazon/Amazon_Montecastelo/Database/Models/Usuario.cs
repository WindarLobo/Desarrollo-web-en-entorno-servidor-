
namespace Amazon_Montecastelo.Database.Models
{

    public class Usuario
    {
        public int UsuarioID { get; set; }
        public string NombreUsuario { get; set; }
        public string Email { get; set; }
        public string Contrasena { get; set; }
        public string userType { get; set; }
    }
}
