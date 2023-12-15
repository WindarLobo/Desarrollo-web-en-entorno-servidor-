using Amazon_Montecastelo.Database.Models;
using System.ComponentModel.DataAnnotations;

namespace Amazon_Montecastelo.Models
{
    public class UsuarioViewModel
    {

        [Required, StringLength(50)]
        public string Email { get; set; }

        [Required, StringLength(50)]
        public string Password { get; set; }

    }
    public class UsuarioViewModelCreate
    {
        public int UsuarioID { get; set; }

        [Required(ErrorMessage = "El NombreUsuario es obligatorio")]
        public string NombreUsuario { get; set; }

        [Required(ErrorMessage = "El userType es obligatorio")]
        public string userType { get; set; }

        [Required(ErrorMessage = "El email es obligatorio")]
        public string Email { get; set; }

        [Required(ErrorMessage = "El password es obligatorio")]
        public string Password { get; set; }

    }
}