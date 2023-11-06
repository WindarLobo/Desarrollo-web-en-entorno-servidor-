using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Ejercicio2.DataBase.Models
{
    [Table("Productos")]
    public class Producto
    {
        [Key]

        public int Id { get; set; }
        public string Nombre { get; set; }
        public decimal Precio {get; set; }


    }
}
