using Ejercicio_1_.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace Ejercicio_1_.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }
        public IActionResult Ejercicio1(string nombre)
        {
            if (!string.IsNullOrWhiteSpace(nombre))
            {
                ViewBag.MensajeBienvenida = $"¡Bienvenido, {nombre}!";
            }
            else
            {
                ViewBag.MensajeBienvenida = "¡Bienvenido, Usuario!";
            }

            return View();
        }
        public IActionResult Ejercicio2()
        {
            var modelo = new ErrorViewModel();
            return View(modelo);

           
        }
        public IActionResult Ejercicio3()
        {
            var imagenRuta = "~/Img/Real_Madrid_CF.svg.png";

            var futbolistas = new List<ErrorViewModel>
            {
                new ErrorViewModel { Nombre = "Thibaut", Apellido="Courtois", Edad = 29},
                new ErrorViewModel { Nombre = "Karim",Apellido="Benzema" ,Edad = 36 },
                new ErrorViewModel { Nombre = "Vinicius", Apellido="Junior",Edad = 36, },
                
            };
            var urlImagen = Url.Content(imagenRuta);

            // Pasa la URL de la imagen a la vista
            ViewBag.UrlImagen = urlImagen;


            return View(futbolistas);


        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

       
    }
}