using Ejercicio2.DataBase.Repositorio;
using Ejercicio2.DataBase;
using Microsoft.AspNetCore.Mvc;

namespace Ejercicio2.Controllers
{
    public class FabricanteController : Controller
    {

        private readonly FabricanteRepositorio _fabricanteRepositorio;

        public FabricanteController(TiendaContext context)
        {
            _fabricanteRepositorio = new FabricanteRepositorio(context);
        }

        

        [Route("/Fabricante")]
        [Route("/Fabricante/Index")]
        public IActionResult Index()
        {
            var fabricantes = _fabricanteRepositorio.GetAllFabricante();

            return View(fabricantes);

        }
        
    }
}
