using Boletin4.Models;
using Microsoft.AspNetCore.Mvc;

namespace Boletin4.Controllers
{
    public class ProductoController : Controller
    {

        public static List<ProductoViewModel> products = new List<ProductoViewModel>
    {
        new ProductoViewModel { Id = 1, Name = "Producto 1", Price = 10.99M },
        new ProductoViewModel { Id = 2, Name = "Producto 2", Price = 19.99M },
        // Agrega más productos aquí
    };

        public IActionResult Index()
        {
            return View(products);
        }
    }
}
   


