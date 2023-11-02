using LoboGarcesWindarTarea3.Database.Repositories;
using Microsoft.AspNetCore.Mvc;
using LoboGarcesWindarTarea3.Database;
using LoboGarcesWindarTarea3.Models;

namespace LoboGarcesWindarTarea3.Controllers
{
    public class LoginController : Controller
    {
        private readonly LoginRepositorio _loginRepository;

        public LoginController(InstitutoMontecasteloContext context)
        {
            _loginRepository = new LoginRepositorio(context);
        }

        [Route("/")]
        [Route("/Login")]
        [Route("/Login/Logueate")]
        public IActionResult Logueate()
        {
             return View();    
        }


        [HttpPost]
        [Route("/Login/DoLogin")]
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


        [Route("/Login/MiCurriculum")]

        // Metodo de accion MiCurriculum(), prepara los datos necesarios para mostrar en la vista.
        public ActionResult MiCurriculum()
        {
            //if (!Global.IsLogged)
            //{
            //     return View(Global.LoginView);
            //}

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
}

       
