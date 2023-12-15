using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Amazon_Montecastelo.Database.Models
{


    public class Carrito
    {
      

        public int CarritoID { get; set; }

        public int UsuarioID { get; set; }

   
        public Usuario Usuario { get; set; }

        public DateTime FechaCarrito { get; set; }

        public double TotalVenta { get; set; }

        public double Subtotal { get; set; }
        public int CantidaProducto { get; set; }
        public List<DetalleCarrito> Detalles{ get; set; }= default!;

       
    }
}

