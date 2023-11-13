using Amazon_Montecastelo.Database.Repositorios;
using Amazon_Montecastelo.Database;
using Microsoft.AspNetCore.Mvc;
using LoboGarcesWindarTarea3;

namespace Amazon_Montecastelo.Controllers
{
    public class UsuarioController : Controller
    {
       
        private readonly CarritoRepositorio _carritoRepositorio;
        private readonly ProductoReposiotiro _productoRepositorio;


        public UsuarioController(AmazonContext context, ProductoReposiotiro productoRepositorio)
        {
            _carritoRepositorio = new CarritoRepositorio(context); 
           
            _productoRepositorio = productoRepositorio;
          
        }



        [Route("/Usuario")]
        [Route("/Usuario/Productos")]
        public IActionResult Producto()
        {
            var productos = _productoRepositorio.GetAllProducto();
            return View(productos);
        }

        [HttpPost]
        [Route("/Usuario/AgregarAlCarrito/{productoId?}")]
        public IActionResult AgregarAlCarrito(int productoId,int cantidad = 1)
        {
       
            var userId = GlobalInfo.UsuarioLogeado.UsuarioID;
            _carritoRepositorio.AgregarAlCarrito(userId, productoId,cantidad);
            return RedirectToAction("Carrito", "Usuario", new { userId });
        }
       
        [Route("/Usuario/Carrito")]
        public IActionResult Carrito()
        {
            var carrito = _carritoRepositorio.ObtenerCarrito(GlobalInfo.UsuarioLogeado.UsuarioID);
            return View(carrito);
        }

        [HttpPost]
        [Route("/Usuario/EliminarDelCarrito/{productoId?}")]
        public IActionResult EliminarDelCarrito(int productoId)
        {
            var userId = GlobalInfo.UsuarioLogeado.UsuarioID;
            _carritoRepositorio.EliminarDelCarrito(userId, productoId);
            return RedirectToAction("Carrito", "Usuario", new { userId });
        }

        //[HttpPost]
        //public IActionResult RealizarCompra(int usuarioId)
        //{
        //    _ventaRepositorio.RealizarCompra(usuarioId);
        //    return RedirectToAction("Carrito", "Usuario");
        //}
    }
}









