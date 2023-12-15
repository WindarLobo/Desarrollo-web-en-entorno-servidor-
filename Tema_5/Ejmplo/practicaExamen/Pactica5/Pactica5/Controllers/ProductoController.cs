using Microsoft.AspNetCore.Mvc;
using Pactica5.Database.Models;
using Pactica5.DataBase;
using Pactica5.DataBase.Models;
using Pactica5.DataBase.Repository;
using Pactica5.Models;

namespace Pactica5.Controllers
{
    public class ProductoController : Controller
    {



        private readonly ProductoRepository _productoRepositorio;
        private readonly CarritoRepository _carritoproductoRepositorio;
        private readonly VentaRepository _ventaRepository;
        public ProductoController(Conexion context)
        {

            _productoRepositorio = new ProductoRepository(context);
            _carritoproductoRepositorio= new CarritoRepository(context);
            _ventaRepository = new VentaRepository(context);

        }
        [Route("/")]
        [Route("/Producto")]
        [Route("/Producto/ListaDeproductos")]

        public async Task<IActionResult> ListaDeproductos()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            if (GlobalInfo.UsuarioLogeado.UserType != "administrador")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }

            var productos = await _productoRepositorio.GetAllProducto();

            return View(productos);

        }
        [Route("/Producto/agregar")]
        public IActionResult Agregar()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);

                }
            if (GlobalInfo.UsuarioLogeado.UserType != "administrador")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }
            return View(new Producto());
        }
        [Route("/Producto/Detalle/{id}")]
        public async Task<IActionResult> Detalle(int id)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }

            if (GlobalInfo.UsuarioLogeado.UserType != "administrador")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }
            var detalle = await _productoRepositorio.GetProducto(id);
            return View(detalle);
        }

        [HttpPost]
        [Route("/Producto/Create")]
        public async Task<IActionResult> Create(Producto producto)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }


            if (producto.ProductoID > 0)
            {

                await _productoRepositorio.UpdateProducto(producto);
            }
            else
            {

                await _productoRepositorio.CreateProducto(producto);
            }
            if (GlobalInfo.UsuarioLogeado.UserType != "administrador")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }

            return RedirectToAction("ListaDeproductos");
        }



        [Route("/Producto/Edit/{id}")]
        public async Task<IActionResult> Edit(int id)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }

            if (GlobalInfo.UsuarioLogeado.UserType != "administrador")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }
            var producto = await _productoRepositorio.GetProducto(id);

            return View("Agregar", producto);
        }


        [Route("/Producto/Delete/{id?}")]
        public async Task<IActionResult> Delete(int? id)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }

            if (GlobalInfo.UsuarioLogeado.UserType != "administrador")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }
            await _productoRepositorio.DeleteProducto(id);

            return RedirectToAction("ListaDeproductos");
        }



        [Route("/Producto/ProductoUsuario")]

        public async Task<IActionResult> ProductoUsuario()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            if (GlobalInfo.UsuarioLogeado.UserType != "usuario")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }

            var productos = await _productoRepositorio.GetAllProducto();
            var viewModel = new ProductoViewModel
            {
                Productos = productos

            };

            return View(viewModel);
        }

       [HttpPost]
        [Route("/Producto/AgregarAlCarrito/{productoId}/accion")]
       public async Task<IActionResult> AgregarAlCarrito(int productoId, string accion)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            if (GlobalInfo.UsuarioLogeado.UserType != "usuario")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }
            var userId = GlobalInfo.UsuarioLogeado.UsuarioID;

          var producto = await _productoRepositorio.GetProducto(productoId);

            var carrito = GlobalInfo.MiCarrito;

            carrito = await _carritoproductoRepositorio.ObtenerCarrito(userId);

           if (carrito.Detalles.Any(x => x.ProductoID == productoId))
           {
               var detalle = carrito.Detalles.Single(x => x.ProductoID == productoId);

               if (detalle != null)
               {
                   if (accion == "incrementar")
                   {
                       detalle.Cantidad++;
                       detalle.PrecioTotal = detalle.Cantidad * producto.Precio;


                  }
                    else if (accion == "decrementar" && detalle.Cantidad > 1)
                   {
                       detalle.Cantidad--;
                       detalle.PrecioTotal = detalle.Cantidad * producto.Precio;
                   }
                }

            }
            else
            {
                carrito.Detalles.Add(new DetalleCarrito
                {

                    ProductoID = producto.ProductoID,
                    Cantidad = 1,
                    PrecioTotal = producto.Precio,
                    PrecioUnitario = producto.Precio,

                });
            }

            carrito.TotalVenta = carrito.Detalles.Sum(x => x.PrecioTotal);


            await _carritoproductoRepositorio.Guardar(carrito);

            return RedirectToAction("Carrito", "Producto");
        }

        [Route("/Producto/Carrito")]
        public async Task<IActionResult> Carrito()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            if (GlobalInfo.UsuarioLogeado.UserType != "usuario")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }
            var userId = GlobalInfo.UsuarioLogeado.UsuarioID;

            var carrito = await _carritoproductoRepositorio.ObtenerCarrito(userId);

            carrito.Subtotal = carrito.Detalles.Sum(x => x.PrecioTotal);

            carrito.CantidaProducto = carrito.Detalles.Sum(x => x.Cantidad);


            return View(carrito);
        }

        [HttpPost]
        [Route("/Producto/EliminarDelCarrito/{productoId?}")]
        public async Task<IActionResult> EliminarProductodelCarrito(int? productoId)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            if (GlobalInfo.UsuarioLogeado.UserType != "usuario")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }
            await _carritoproductoRepositorio.EliminarProdcutoDelCarrito(productoId);

            return RedirectToAction("Carrito", "Producyo");
        }


        [HttpPost]
        [Route("/Producto/Filtrar")]
        public async Task<IActionResult> Filtrar(string nombre, decimal precioDesde, decimal precioHasta)
        {
            var filtrado = await _productoRepositorio.Filtrar(nombre, precioDesde, precioHasta);
            var viewModel = new ProductoViewModel
            {
                Productos = filtrado,


            };

            return PartialView("ProductoUsuario", viewModel);
        }


        [Route("/Producto/AccesoDenegado")]

        public IActionResult AccesoDenegado()
        {

            var mensaje = TempData["MensajeAccesoDenegado"] as string;
            ViewBag.MensajeAccesoDenegado = mensaje;
            return View();
        }

        [Route("/Amazon/Venta")]
        public async Task<IActionResult> Venta()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            if (GlobalInfo.UsuarioLogeado.UserType != "usuario")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");

            }

            var userId = GlobalInfo.UsuarioLogeado.UsuarioID;

            var venta = await _ventaRepository.ObtenerVenta(userId);
            return View(venta);
        }


        [HttpPost]
        [Route("/Amazon/AgregarAlaVenta/{productoId}/accion")]
        public async Task<IActionResult> AgregarAlaVenta(int productoId, string accion)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            if (GlobalInfo.UsuarioLogeado.UserType != "usuario")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }
            var userId = GlobalInfo.UsuarioLogeado.UsuarioID;


            var producto = await _productoRepositorio.GetProducto(productoId);


            var carrito = await _carritoproductoRepositorio.ObtenerCarrito(userId);

            var venta = await _ventaRepository.ObtenerVenta(userId);


            if (venta == null)
            {
                venta = new Venta
                {
                    FechaVenta = DateTime.Now,
                    Detalles = new List<DetalleVenta>()
                };
            }
            if (accion == "tramitarPedido")
            {


                foreach (var detalleCarrito in carrito.Detalles)
                {
                    var detalleVenta = new DetalleVenta
                    {
                        ProductoID = detalleCarrito.ProductoID,
                        Cantidad = detalleCarrito.Cantidad,
                        PrecioTotal = detalleCarrito.PrecioTotal,
                        PrecioUnitario = detalleCarrito.PrecioUnitario



                    };

                    venta.Detalles.Add(detalleVenta);
                }
            }


            venta.TotalVenta = venta.Detalles.Sum(x => x.PrecioTotal);


            await _ventaRepository.Guardar(venta);

            await _carritoproductoRepositorio.EliminarDelCarrito(carrito.CarritoID);

            return RedirectToAction("Venta", "Producto");
        }


        [HttpPost]
        [Route("/Amazon/EliminarDelaVenta/{productoId?}")]
        public async Task<IActionResult> EliminarDelaVenta(int? productoId)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            if (GlobalInfo.UsuarioLogeado.UserType != "usuario")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }
            await _ventaRepository.EliminarDelaVenta(productoId);

            return RedirectToAction("Venta", "Producto");
        }

    }
}