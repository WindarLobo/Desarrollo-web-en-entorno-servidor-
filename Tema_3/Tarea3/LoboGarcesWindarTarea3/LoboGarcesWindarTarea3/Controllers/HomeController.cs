using LoboGarcesWindarTarea3.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace LoboGarcesWindarTarea3.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        [Route("/Home")]

        [Route("/Home/Index")]
        public IActionResult Index()
        {
            if (!Global.IsLogged)
            {
                return View(Global.LoginView);
            }

            return View();
        }

        public IActionResult Privacy()
        {
            if (!Global.IsLogged)
            {
                return View(Global.LoginView);
            }

            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}