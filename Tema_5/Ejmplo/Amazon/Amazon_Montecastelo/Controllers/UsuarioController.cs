using Amazon_Montecastelo.Database.Repositorios;
using Amazon_Montecastelo.Database;
using Microsoft.AspNetCore.Mvc;
using LoboGarcesWindarTarea3;

namespace Amazon_Montecastelo.Controllers
{
    public class UsuarioController : Controller
    {
        private readonly VentasRepositorio _ventaRepositorio;
        private readonly ProductoReposiotiro _productoRepositorio;


        public UsuarioController(AmazonContext context, ProductoReposiotiro productoRepositorio)
        {
            _ventaRepositorio = new VentasRepositorio(context);
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
        [Route("/Usuario/AgregarAlCarrito/{productId?}")]
        public IActionResult AgregarAlCarrito(int productoId)
        {
            var userId = GlobalInfo.UsuarioLogeado.UsuarioID;
            _ventaRepositorio.AgregarAlCarrito(userId, productoId);
            return RedirectToAction("Carrito", "Usuario", new { userId });
        }

        [Route("/Usuario/Carrito")]
        public IActionResult Carrito()
        {
            var carrito = _ventaRepositorio.ObtenerCarrito(GlobalInfo.UsuarioLogeado.UsuarioID);
            return View(carrito);
        }

        [HttpPost]
        public IActionResult EliminarDelCarrito(int usuarioId, int productoId)
        {
            _ventaRepositorio.EliminarDelCarrito(usuarioId, productoId);
            return RedirectToAction("Carrito", "Usuario", new { usuarioId });
        }

        [HttpPost]
        public IActionResult RealizarCompra(int usuarioId)
        {
            _ventaRepositorio.RealizarCompra(usuarioId);
            return RedirectToAction("Carrito", "Usuario");
        }
    }
}









