using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Amazon_Montecastelo.Database.Models
{


    public class DetalleCarrito
    {
        public int DetalleID { get; set; }
        public int CarritoID { get; set; }
        public Carrito Carrito { get; set; }
        public int ProductoID { get; set; }
        public Productos Producto { get; set; }
        public int Cantidad { get; set; }
        public double PrecioUnitario { get; set; }
        public double PrecioTotal { get; set; }



    }
}

