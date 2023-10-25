using Microsoft.AspNetCore.Mvc;
using LoboGarcesWindarTarea2.Models;

namespace LoboGarcesWindarTarea2
{
    public class HomeController : Controller
    {
       
        [HttpGet]
        [Route("")]
        [Route("Home")]
        [Route("Home/Index")]

        // Metodo de accion  Index(), que se  encarga de  manejar las solicitudes HTTP y devuelve  una viewModel a la vista.
        public ActionResult Index()
        {
            var imagenRuta2 = "~/img/justin-lim-tloFnD-7EpI-unsplash.jpg";

            var urlImagen2 = Url.Content(imagenRuta2);

            var viewModel = new MiCurriculumViewModel

            {

                UrlImagenIndex = urlImagen2
            };
            return View(viewModel);
        }
    }
}
