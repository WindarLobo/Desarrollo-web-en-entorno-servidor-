using LoboGarcesWindarTarea3.Database.Repositories;
using Microsoft.AspNetCore.Mvc;
using LoboGarcesWindarTarea3.Database;
using LoboGarcesWindarTarea3.Models;

namespace LoboGarcesWindarTarea3.Controllers;
public class LoginController : Controller
{
    private readonly LoginRepositorio _loginRepository;

    //Contructor LoginController(InstitutoMontecasteloContext context),este repositorio se utiliza para interactuar con los datos  en la base de datos.
    public LoginController(InstitutoMontecasteloContext context)
    {
        _loginRepository = new LoginRepositorio(context);
    }


    // Rutas especifican  que se mapearán a los métodos del controlador. 

    [Route("/Login")]

    [Route("/Login/Logueate")]

    public IActionResult Logueate()
    {
        return View();
    }


    //Reponde solo a solicitudes HTTP POST.

    [HttpPost]

    // Rutas especifican  que se mapearán a los métodos del controlador. 

    [Route("/Login/DoLogin")]

    //Metodo IActionResult DoLogin(string Username, string Password), Verifica en la base de datos si existe  y redirige al usuario a la página de inicio (/Views/Home/Index.cshtml). Si  no son válidas, redirige al usuario a una vista llamada "Logueate".
    public IActionResult DoLogin(string Username, string Password)
    {
        var login = _loginRepository.GetLoginUsernamePassword(Username, Password);

        if (login == null)
        {
            return View("Logueate");
        }

        Global.UsuarioLogeado = login;

        return View("/Views/Home/Index.cshtml");
    }

    // Rutas especifican  que se mapearán a los métodos del controlador. 

    [Route("/Login/SignOff")]

    //IActionResult SignOff() Cierrra la sesión del usuario y lo redirige a la vista "Logueate".
    public IActionResult SignOff()
    {

        Global.UsuarioLogeado = null;

        return View("Logueate");
    }


    // Rutas especifican  que se mapearán a los métodos del controlador. 

    [Route("/Login/MiCurriculum")]

    // Metodo de accion MiCurriculum(), prepara los datos necesarios para mostrar en la vista.
    public ActionResult MiCurriculum()
    {
        if (!Global.IsLogged)
        {
            return View(Global.LoginView);
        }

        var imagenRuta = "~/img/Windar.jpg";

        var urlImagen = Url.Content(imagenRuta);


        var viewModel = new MiCurriculumViewModel
        {
            Idiomas = MiCurriculumBuilder.ObtenerIdiomas(),

            Intereses = MiCurriculumBuilder.ObtenerIntereses(),

            Experiencias = MiCurriculumBuilder.ObtenerExperiencia(),

            Formacion = MiCurriculumBuilder.ObtenerFormacion(),

            Conocimientos = MiCurriculumBuilder.ObtenerConocimiento(),

            UrlImagenCurriculum = urlImagen
        };

        return View(viewModel);
    }

}


