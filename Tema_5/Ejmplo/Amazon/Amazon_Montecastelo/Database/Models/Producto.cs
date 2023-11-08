using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Amazon_Montecastelo.Database.Models
{
    [Table("Productos")]
    public class Producto
    {
        [Key]
        public int ProductoID { get; set; }
        public string Descripcion { get; set; }
        public string Nombre { get; set; }
        public decimal Precio { get; set; }

    }
}
