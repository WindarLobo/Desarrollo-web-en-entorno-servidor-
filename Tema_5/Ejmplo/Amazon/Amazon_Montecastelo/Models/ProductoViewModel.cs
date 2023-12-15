using Amazon_Montecastelo.Database.Models;
using System.ComponentModel.DataAnnotations;

namespace Amazon_Montecastelo.Models
{
    public class ProductoViewModel
    {
        public IEnumerable<Productos> Productos { get; set; }
       
    }

    public class ProductoCreateViewModel
    {
    
        public int ProductoID { get; set; }
        public string Descripcion { get; set; }
        public string Nombre { get; set; }

        [Range(1, short.MaxValue, ErrorMessage = "Precio debe ser numerico")]
        public string Precio { get; set; }
    }

}
