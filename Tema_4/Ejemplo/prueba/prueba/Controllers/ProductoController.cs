using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

using prueba.Models;

namespace prueba.Controllers
{
    public class ProductoController : Controller
    {
     
        private readonly BD_ProductosContext _producto;
        public ProductoController( BD_ProductosContext producto)
        {
        
            _producto = producto;
        }
        [HttpGet]
        [Route("")]
        [Route("Producto")]
        [Route("Producto/Index")]

        // GET: Producto
        public IActionResult Index()
        {
           var prodcto=  _producto.Productos;
            return View(prodcto);
        }

      

     
      
    }
}
