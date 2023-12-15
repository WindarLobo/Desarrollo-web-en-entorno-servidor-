

namespace Amazon_Montecastelo.Database.Models
{
  
    public class Venta
    {

        public int VentaId { get; set; }

        public int UsuarioID { get; set; }

        public Usuario Usuario { get; set; }

        public DateTime FechaVenta { get; set; }

        public double TotalVenta { get; set; }

        public List<DetalleVenta> Detalles { get; set; }

    }
}
