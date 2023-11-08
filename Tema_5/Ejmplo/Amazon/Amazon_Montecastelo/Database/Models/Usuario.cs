using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Amazon_Montecastelo.Database.Models
{

    [Table("Usuarios")]
    public class Usuario
    {
        [Key]
        public int UsuarioID { get; set; }
        public string NombreUsuario { get; set; }
        public string Email { get; set; }
        public string Contrasena { get; set; }
    }
}
