
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Amazon_Montecastelo.Database.Models
{
    [Table("Ventas")]
    public class Venta
    {
        [Key]

        public int VentaId { get; set; }

        public int UsuarioID { get; set; }

        public Usuario Usuario { get; set; }

        public DateTime FechaVenta { get; set; }

        public decimal TotalVenta { get; set; }

        public List<DetalleVenta> Detalles { get; set; }

    }
}
