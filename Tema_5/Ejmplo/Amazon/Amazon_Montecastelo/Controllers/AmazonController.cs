using Amazon_Montecastelo.Database.Models;
using Amazon_Montecastelo.Database.Repositorios;
using Amazon_Montecastelo.Database;
using LoboGarcesWindarTarea3;
using Microsoft.AspNetCore.Mvc;

namespace Amazon_Montecastelo.Controllers
{
    public class AmazonController : Controller
    {
        private readonly AmazonRepository _productoRepositorio;

        public AmazonController(Conexion context)
        {
            _productoRepositorio = new AmazonRepository(context);

        }
        [Route("/")]
        [Route("/AmazonController")]
        [Route("/AmazonController/Productos")]

        public async Task<IActionResult> Producto()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            var productos = await _productoRepositorio.GetAllProducto();




            return View(productos);
        }
        [Route("/AmazonController/agregar")]
        public IActionResult Agregar()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }

            return View(new Productos());
        }


        [HttpPost]
        [Route("/AmazonController/Create")]
        public async Task<IActionResult> Create(Productos producto)
        {
            if (producto.ProductoID > 0)
            {
                // Update an existing product
                await _productoRepositorio.UpdateProducto(producto);
            }
            else
            {
                // Create a new product
                await _productoRepositorio.CreateProducto(producto);
            }

            return RedirectToAction("Producto");
        }



        [Route("/AmazonController/edit/{id}")]
        public async Task<IActionResult> Edit(int id)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }

            var producto = await _productoRepositorio.GetProducto(id);

            return View("Agregar", producto);
        }



        [Route("/AmazonController/Delete/{id?}")]
        public async Task<IActionResult> Delete(int? id)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            await _productoRepositorio.DeleteProducto(id);

            return RedirectToAction("Producto");
        }

        [Route("/AmazonController/ProductoUsuario")]
        public async Task<IActionResult> ProductoUsuario()
        {
            var productos = await _productoRepositorio.GetAllProducto();
            return View(productos);
        }

        [HttpPost]
        [Route("/Usuario/AgregarAlCarrito/{productoId?}")]
        public async Task<IActionResult> AgregarAlCarrito(int productoId)
        {
            var userId = GlobalInfo.UsuarioLogeado.UsuarioID;

            var producto =  await _productoRepositorio.GetProducto(productoId);

            var carrito = GlobalInfo.MiCarrito;

            carrito = await _productoRepositorio.ObtenerCarrito(userId);

            if (carrito.Detalles.Any(x => x.ProductoID == productoId))
            {
                var detalle = carrito.Detalles.Single(x => x.ProductoID == productoId);
                detalle.Cantidad = detalle.Cantidad + 1;
                detalle.PrecioTotal = detalle.Cantidad * producto.Precio;
            }
            else
            {
                carrito.Detalles.Add(new DetalleCarrito
                {
                    ProductoID = producto.ProductoID,
                    Cantidad = 1,
                    PrecioTotal = producto.Precio,
                    PrecioUnitario = producto.Precio
                });
            }

            carrito.TotalVenta = carrito.Detalles.Sum(x => x.PrecioTotal);

            await _productoRepositorio.Guardar(carrito);

            return RedirectToAction("Carrito", "Amazon");
        }

        [Route("/AmazonController/Carrito")]
        public async Task<IActionResult> Carrito()
        {

            var userId = GlobalInfo.UsuarioLogeado.UsuarioID;
            var carrito = await _productoRepositorio.ObtenerCarrito(userId);


            return View(carrito);
        }

        //[HttpPost]
        //[Route("/Usuario/EliminarDelCarrito/{productoId?}")]
        //public IActionResult EliminarDelCarrito(int productoId)
        //{
        //    var userId = GlobalInfo.UsuarioLogeado.UsuarioID;
        //    _carritoRepositorio.EliminarDelCarrito(userId, productoId);
        //    return RedirectToAction("Carrito", "Usuario", new { userId });
        //}

        //[HttpPost]
        //public IActionResult RealizarCompra(int usuarioId)
        //{
        //    _ventaRepositorio.RealizarCompra(usuarioId);
        //    return RedirectToAction("Carrito", "Usuario");
        //}
    }


}

