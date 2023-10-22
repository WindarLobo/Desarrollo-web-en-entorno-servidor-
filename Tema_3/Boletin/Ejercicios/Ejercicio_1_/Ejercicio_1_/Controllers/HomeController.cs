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
      

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

       
    }
}