using Ejercicio_1_.Models;
using Microsoft.AspNetCore.Mvc;
using System;

namespace Ejercicio_1_.Controllers
{
    public class FutbolController : Controller
    {
        private readonly ILogger<FutbolController> _logger;

        public FutbolController(ILogger<FutbolController> logger)
        {
            _logger = logger;
        }
        public IActionResult Ejercicio3()
        {
            var imagenRuta = "~/Img/Real_Madrid_CF.svg.png";

            var futbolistas = new List<FutbolistaViewModel>
            {
                new FutbolistaViewModel { Nombre = "Thibaut", Apellido="Courtois", Edad = 29},
                new FutbolistaViewModel { Nombre = "Karim",Apellido="Benzema" ,Edad = 36 },
                new FutbolistaViewModel { Nombre = "Vinicius", Apellido="Junior",Edad = 36, },

            };
            var urlImagen = Url.Content(imagenRuta);

            // Pasa la URL de la imagen a la vista
            ViewBag.UrlImagen = urlImagen;


            return View(futbolistas);


        }
    }
}
