
namespace Amazon_Montecastelo.Database.Models
{

    public class ProductoViewModel
    {

        public int ProductoID { get; set; }
        public string Descripcion { get; set; }
        public string Nombre { get; set; }
        public decimal Precio { get; set; }
        public int Cantidad { get; set; }
        public decimal PrecioTotal { get; set; }

    }
}
