using Microsoft.AspNetCore.Mvc;
using Web_montecastelo.Models;

namespace Web_montecastelo.Controllers
{
    public class HomeController : Controller
    {
        // Metodo de accion  Index(), que se  encarga de  manejar las solicitudes HTTP y devuelve  una viewModel a la vista.
        public IActionResult Index()
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
