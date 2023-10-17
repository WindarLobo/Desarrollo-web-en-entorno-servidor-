using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using Web_montecastelo.Models;
using System;
namespace Web_montecastelo.Controllers
{
    public class MiCurriculumController : Controller
    {
        private readonly ILogger<MiCurriculumController> _logger;

        public MiCurriculumController(ILogger<MiCurriculumController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }
        public IActionResult MiCurriculum()
        {

            var imagenRuta = "~/img/Windar.jpg";
            var urlImagen = Url.Content(imagenRuta);
            var idiomas = ObtenerIdiomas();
            var intereses = ObtenerInteres();

            var viewModel = new MiCurriculumViewModel
            {
                Idiomas = idiomas,
                Intereses = intereses,
                UrlImagen = urlImagen
            };

            return View(viewModel);
        }

        private List<MiCurriculumViewModel> ObtenerIdiomas()
        {
            var idiomas = new List<MiCurriculumViewModel>
    {
        new MiCurriculumViewModel { idioma = "Español-nativo"},
        new MiCurriculumViewModel { idioma = "Gallego-medio" },
        new MiCurriculumViewModel { idioma = "Ingles-medio"},
    };
            return idiomas;
        }

        private List<MiCurriculumViewModel> ObtenerInteres()
        {
            var interes = new List<MiCurriculumViewModel>
    {
        new MiCurriculumViewModel { interes = "Natacion"},
        new MiCurriculumViewModel { interes = "Actividad al aire libre" },
        new MiCurriculumViewModel { interes = "Correr"},
         new MiCurriculumViewModel { interes = "Cine"},
    };
            return interes;
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new MiCurriculumViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}

