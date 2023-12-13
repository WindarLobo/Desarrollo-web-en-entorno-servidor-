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
            var fabricas = await _fabricaRepositorio.GetAllFabricante();

            return View(fabricas);

        }

        [Route("/Fabrica")]
        [Route("/Fabrica/Index")]

        public async Task<IActionResult> Index()
        {
            var fabricas = await _fabricaRepositorio.GetAllFabricante();

            return View(fabricas);

        }

        [Route("/Fabrica/ListaProducto")]

        public async Task<IActionResult> ListaProducto()
        {
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
            var detalle = await _productoRepositorio.GetProducto(id);

            return View(detalle);
        }

        [HttpPost]
        [Route("/Fabrica/Filtrar")]
        public async Task<IActionResult> Filtrar(string nombre, decimal precioDesde, decimal precioHasta)
        {
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
            
            return View(new Producto());
        }
        [HttpPost]
        [Route("/Fabrica/Create")]
        public async Task<IActionResult> Create(Producto producto)
        {
            
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

       
            var producto = await _productoRepositorio.GetProducto(id);
          

            return View("Agregar", producto);
        }

        [Route("/Fabrica/Delete/{id?}")]
        public async Task<IActionResult> Delete(int? id)
        {
          
            await _productoRepositorio.DeleteProducto(id);

            return RedirectToAction("ListaProducto");
        }


    }


}

