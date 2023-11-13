using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Amazon_Montecastelo.Database.Models
{

    [Table("Carrito")]
    public class Carrito
    {
        [Key]

        public int CarritoID { get; set; }

        public int UsuarioID { get; set; }

        public Usuario Usuario { get; set; }

        public DateTime FechaCarrito { get; set; }

        public decimal TotalVenta { get; set; }

        public List<DetalleCarrito> Detalles{ get; set; }

    }
}

