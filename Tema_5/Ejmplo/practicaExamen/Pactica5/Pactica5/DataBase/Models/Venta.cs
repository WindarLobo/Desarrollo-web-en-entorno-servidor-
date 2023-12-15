
using Pactica5.DataBase.Models;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Pactica5.Database.Models
{
  
    public class Venta
    {

        public int VentaId { get; set; }

        public int UsuarioID { get; set; }

        public Usuario Usuario { get; set; }

        public DateTime FechaVenta { get; set; }

        public decimal TotalVenta { get; set; }

        public List<DetalleVenta> Detalles { get; set; }

    }
}
