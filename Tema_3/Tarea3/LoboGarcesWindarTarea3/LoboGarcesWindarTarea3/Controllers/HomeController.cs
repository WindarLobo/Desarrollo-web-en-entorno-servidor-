using LoboGarcesWindarTarea3.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace LoboGarcesWindarTarea3.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    // Rutas especifican  que se mapearán a los métodos del controlador. 

    [Route("/")]

    [Route("/Home")]

    [Route("/Home/Index")]

    //Metodo  IActionResult Index(), verifica si el usuario ha iniciado sesión (Global.IsLogged). Si el usuario no ha iniciado sesión, el método devuelve la vista asociada a Global.LoginView.
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