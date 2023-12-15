using Amazon_Montecastelo.Database.Models;
using Amazon_Montecastelo.Database.Repositorios;
using Amazon_Montecastelo.Database;
using LoboGarcesWindarTarea3;
using Microsoft.AspNetCore.Mvc;
using System;
using Microsoft.AspNetCore.Authorization;
using Amazon_Montecastelo.Models;

namespace Amazon_Montecastelo.Controllers
{
    public class AmazonController : Controller
    {
        private readonly ProductoRepository _productoRepositorio;
        private readonly CarritoRepository _carritoRepositorio;
        private readonly VentaRepository _ventaRepository;

        public AmazonController(Conexion context)
        {

            _productoRepositorio = new ProductoRepository(context);
            _carritoRepositorio = new CarritoRepository(context);
            _ventaRepository = new VentaRepository(context);


        }
        [Route("/")]
        [Route("/Amazon")]
        [Route("/Amazon/Productos")]

        public async Task<IActionResult> Producto()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            if (GlobalInfo.UsuarioLogeado.userType != "administrador")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }

            var productos = await _productoRepositorio.GetAllProducto();

            return View(productos);

        }
        [Route("/Amazon/agregar")]
        public IActionResult Agregar()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);

            }
            if (GlobalInfo.UsuarioLogeado.userType != "administrador")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }
            return View(new ProductoCreateViewModel());
        }


        [HttpPost]
        [Route("/Amazon/Create")]
        public async Task<IActionResult> Create(ProductoCreateViewModel productoCreate)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }

            var producto = new Productos
            {
                ProductoID = productoCreate.ProductoID,
                Descripcion = productoCreate.Descripcion,
                Nombre = productoCreate.Nombre,
                Precio = double.Parse(productoCreate.Precio.Replace(".", ","))
            };

            if (producto.ProductoID > 0)
            {
                await _productoRepositorio.UpdateProducto(producto);
            }
            else
            {

                await _productoRepositorio.CreateProducto(producto);
            }
            if (GlobalInfo.UsuarioLogeado.userType != "administrador")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }

            return RedirectToAction("Producto");
        }



        [Route("/Amazon/Edit/{id}")]
        public async Task<IActionResult> Edit(int id)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            if (GlobalInfo.UsuarioLogeado.userType != "administrador")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }
            var producto = await _productoRepositorio.GetProducto(id);

            return View("Agregar", producto);
        }



        [Route("/Amazon/Delete/{id?}")]
        public async Task<IActionResult> Delete(int? id)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            if (GlobalInfo.UsuarioLogeado.userType != "administrador")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }
            await _productoRepositorio.DeleteProducto(id);

            return RedirectToAction("Producto");
        }

        [Route("/Amazon/ProductoUsuario")]

        public async Task<IActionResult> ProductoUsuario()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            if (GlobalInfo.UsuarioLogeado.userType != "usuario")
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
        [Route("/Amazon/AgregarAlCarrito/{productoId}/accion")]
        public async Task<IActionResult> AgregarAlCarrito(int productoId, string accion)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            if (GlobalInfo.UsuarioLogeado.userType != "usuario")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }
            var userId = GlobalInfo.UsuarioLogeado.UsuarioID;

            var producto = await _productoRepositorio.GetProducto(productoId);

            var carrito = GlobalInfo.MiCarrito;

            carrito = await _carritoRepositorio.ObtenerCarrito(userId);

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


            await _carritoRepositorio.Guardar(carrito);

            return RedirectToAction("Carrito", "Amazon");
        }

        [Route("/Amazon/Carrito")]
        public async Task<IActionResult> Carrito()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            if (GlobalInfo.UsuarioLogeado.userType != "usuario")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }
            var userId = GlobalInfo.UsuarioLogeado.UsuarioID;

            var carrito = await _carritoRepositorio.ObtenerCarrito(userId);

            carrito.Subtotal = carrito.Detalles.Sum(x => x.PrecioTotal);

            carrito.CantidaProducto = carrito.Detalles.Sum(x => x.Cantidad);


            return View(carrito);
        }

        [HttpPost]
        [Route("/Amazon/EliminarDelCarrito/{productoId?}")]
        public async Task<IActionResult> EliminarProductodelCarrito(int? productoId)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            if (GlobalInfo.UsuarioLogeado.userType != "usuario")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }
            await _carritoRepositorio.EliminarProdcutoDelCarrito(productoId);

            return RedirectToAction("Carrito", "Amazon");
        }



        [Route("/Amazon/Venta")]
        public async Task<IActionResult> Venta()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            if (GlobalInfo.UsuarioLogeado.userType != "usuario")
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
            if (GlobalInfo.UsuarioLogeado.userType != "usuario")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }
            var userId = GlobalInfo.UsuarioLogeado.UsuarioID;


            var producto = await _productoRepositorio.GetProducto(productoId);


            var carrito = await _carritoRepositorio.ObtenerCarrito(userId);

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

            await _carritoRepositorio.EliminarDelCarrito(carrito.CarritoID);

            return RedirectToAction("Venta", "Amazon");
        }


        [HttpPost]
        [Route("/Amazon/EliminarDelaVenta/{productoId?}")]
        public async Task<IActionResult> EliminarDelaVenta(int? productoId)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            if (GlobalInfo.UsuarioLogeado.userType != "usuario")
            {
                // Redirige o muestra un mensaje de error porque el usuario no es un administrador
                TempData["MensajeAccesoDenegado"] = "No tienes permisos para acceder a esta página.";
                return RedirectToAction("AccesoDenegado");
            }
            await _ventaRepository.EliminarDelaVenta(productoId);

            return RedirectToAction("Venta", "Amazon");
        }

        [HttpPost]
        [Route("/Amazon/Filtrar")]
        public async Task<IActionResult> Filtrar(string nombre,decimal precioDesde, decimal precioHasta)
        {
            var filtrado = await _productoRepositorio.Filtrar(nombre,precioDesde, precioHasta);
            var viewModel = new ProductoViewModel
            {
                Productos = filtrado,
              

            };

            return PartialView("ProductoUsuario",  viewModel);
        }


        [Route("/Amazon/AccesoDenegado")]

        public IActionResult AccesoDenegado()
        {

            var mensaje = TempData["MensajeAccesoDenegado"] as string;
            ViewBag.MensajeAccesoDenegado = mensaje;
            return View();
        }
    }


}

