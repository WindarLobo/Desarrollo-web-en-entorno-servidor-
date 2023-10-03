using ConsolaWeb.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace ConsolaWeb.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }


        public IActionResult Ejercicio1()
        {
            return View();
        }
        public IActionResult Ejercicio2()
        {
            
            return View();
        }
        public IActionResult Ejercicio3()
        {
            return View();
        }

        public IActionResult Ejercicio4()
        {

           
            return View();
        }

       

           [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }


       
      
        public IActionResult ObtenerCartaAleatoria()
        {
            var palos = new[] { "Oro", "Bastos", "Espadas", "Copas" };
            var numeros = new Random().Next(1, 11); // Números del 1 al 10

            var paloAleatorio = palos[new Random().Next(palos.Length)];
            var numeroAleatorio = numeros;

            var cartaImagen = $"img/{numeroAleatorio}{paloAleatorio}.jpg";
            return Content(cartaImagen);
        }
        public IActionResult ObtenerCartaPorNombre(string nombreCarta)
        {
            // Construir la ruta de la imagen basada en el nombre de la carta
            var rutaImagen = $"img/{nombreCarta.ToLower()}.jpg";

            // Devolver la ruta de la imagen como una cadena JSON
            return Json(rutaImagen);
        }

    }

}
