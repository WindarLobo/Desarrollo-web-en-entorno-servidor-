using Boletin_Ejercicio_5.DataBase;
using Boletin_Ejercicio_5.DataBase.Models;
using Boletin_Ejercicio_5.DataBase.Repository;
using Boletin_Ejercicio_5.Models;
using Microsoft.AspNetCore.Mvc;


namespace Boletin_Ejercicio_5.Controllers
{
    public class FabricanteController : Controller
    {
        private readonly FabricaRepository _fabricaRepositorio;
        private readonly ProductoRepository _productoRepositorio;

        public FabricanteController(Conexion context)
        {

            _fabricaRepositorio = new FabricaRepository(context);
            _productoRepositorio = new ProductoRepository(context);




        }
        [Route("/")]
        [Route("/Fabrica")]
        [Route("/Fabrica/ListaFabricante")]

        public async Task<IActionResult> ListaFabricante()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            var fabricas = await _fabricaRepositorio.GetAllFabricante();

            return View(fabricas);

        }

        [Route("/Fabrica")]
        [Route("/Fabrica/Index")]

        public async Task<IActionResult> Index()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            var fabricas = await _fabricaRepositorio.GetAllFabricante();

            return View(fabricas);

        }

        [Route("/Fabrica/ListaProducto")]

        public async Task<IActionResult> ListaProducto()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            var productos = await _productoRepositorio.GetAllProducto();

            var viewModel = new ProductoViewModel
            {
                Productos = productos,


            };

            return View(viewModel);

        }

        [Route("/Fabrica/Detalle/{id}")]
        public async Task<IActionResult> Detalle(int id)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }

            var detalle = await _productoRepositorio.GetProducto(id);

            return View(detalle);
        }

        [HttpPost]
        [Route("/Fabrica/Filtrar")]
        public async Task<IActionResult> Filtrar(string nombre, decimal precioDesde, decimal precioHasta)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            var filtrado = await _productoRepositorio.Filtrar(nombre, precioDesde, precioHasta);

            var viewModel = new ProductoViewModel
            {
                Productos = filtrado,


            };

            return PartialView("ListaProducto", viewModel);
        }
        [Route("/Fabrica/Agregar")]
        public IActionResult Agregar()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }

            return View(new Producto());
        }
        [HttpPost]
        [Route("/Fabrica/Create")]
        public async Task<IActionResult> Create(Producto producto)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }

            if (producto.Codigo > 0)
            {

                await _productoRepositorio.UpdateProducto(producto);
            }
            else
            {

                await _productoRepositorio.CreateProducto(producto);
            }


            return RedirectToAction("ListaProducto");
        }



        [Route("/Fabrica/Edit/{id}")]
        public async Task<IActionResult> Edit(int id)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }

            var producto = await _productoRepositorio.GetProducto(id);


            return View("Agregar", producto);
        }

        [Route("/Fabrica/Delete/{id?}")]
        public async Task<IActionResult> Delete(int? id)
        {

            await _productoRepositorio.DeleteProducto(id);

            return RedirectToAction("ListaProducto");
        }

        [Route("/Fabrica/listaCarrito")]

        public async Task<IActionResult> listaCarrito()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            var carrito = new Carrito();


            var obtenerCarrito = await _productoRepositorio.GetAllProducto();


            carrito = CarritoRepository.MiCarritoTodo();


            var viewModel = new ProductoViewModel
            {
                Carrito = carrito,

                Count = carrito.Productos.Count,



            };

            return View(viewModel);
        }

        [HttpPost]
        [Route("/Fabrica/AgregarAlCarrito/{productoId}")]

        public async Task<IActionResult> AgregarAlCarrito(int productoId)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }

            var carrito = await _productoRepositorio.GetProducto(productoId);

            var añadido = CarritoRepository.AddProducto(carrito);

            if (añadido != null)
            {

                return RedirectToAction("ListaProducto", new { productoId });
            }
            else
            {


                return RedirectToAction("ListaProducto", new { productoId });
            }

        }
    }

}

