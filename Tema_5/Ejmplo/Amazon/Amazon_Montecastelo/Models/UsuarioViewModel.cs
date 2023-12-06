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
}