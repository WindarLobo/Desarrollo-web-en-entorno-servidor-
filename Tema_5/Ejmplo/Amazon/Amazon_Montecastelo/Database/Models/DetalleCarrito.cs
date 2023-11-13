using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Amazon_Montecastelo.Database.Models
{
   
        [Table("DetallesCarrito")]
        public class DetalleCarrito
        {
            [Key]
    
        public int DetalleID { get; set; }

            public int CarritoID { get; set; }
            public Carrito Carrito { get; set; }
            public int ProductoID { get; set; }

            public Producto Producto { get; set; }

            public int Cantidad { get; set; }
            public decimal PrecioUnitario { get; set; }
            public decimal PrecioTotal { get; set; }



        }
    }

