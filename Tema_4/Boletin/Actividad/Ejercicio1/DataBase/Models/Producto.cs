using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Ejercicio2.DataBase.Models
{
    [Table("producto")]
    public class Producto
    {
        [Key]

        public int Codigo { get; set; }
        public string Nombre { get; set; }
        public decimal Precio {get; set; }
        public int codigo_fabricante { get; set; }


    }
}
