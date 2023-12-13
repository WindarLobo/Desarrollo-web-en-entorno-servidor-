using Boletin_Ejercicio_5.DataBase.Models;
using System.ComponentModel.DataAnnotations;

namespace Boletin_Ejercicio_5.Models
{
    public class ProductoViewModel
    {
        public IEnumerable<Producto> Productos { get; set; }

      
    }
}
