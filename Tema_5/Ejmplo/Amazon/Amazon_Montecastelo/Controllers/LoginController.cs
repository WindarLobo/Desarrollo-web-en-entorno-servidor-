using Amazon_Montecastelo.Database;
using Amazon_Montecastelo.Database.Models;
using Amazon_Montecastelo.Database.Repositorios;
using LoboGarcesWindarTarea3;
using Microsoft.AspNetCore.Mvc;

namespace Amazon_Montecastelo.Controllers
{
    public class LoginController : Controller
    {
        private readonly UsuarioRepositorio _usuarioRepositorio;

        public LoginController(AmazonContext context)
        {
            _usuarioRepositorio = new UsuarioRepositorio(context);
        }

        [Route("/Login")]
        [Route("/Login/Logueate")]

        public IActionResult Logueate()
        {
            return View();
        }

        [HttpPost]

        [Route("/Login/DoLogin")]

        public IActionResult DoLogin(string Email, string Password)
        {
            var login = _usuarioRepositorio.GetLoginUsernamePassword(Email, Password);

            if (login == null)
            {
                ViewBag.ErrorMessage = "Error de clave. Por favor, verifica tu correo  y contraseña.";

                return View("Logueate");
            }

            Global.UsuarioLogeado = login;

            return View("/Views/Home/Index.cshtml");
        }


        [Route("/Login/agregar")]
        public IActionResult Agregar()
        {
            return View(new Usuario());
        }

        [HttpPost]
        [Route("/Login/Create")]
        public IActionResult Create()
        {
         
            var Id = int.Parse(HttpContext.Request.Form["UsuarioID"]);
            var nombre = HttpContext.Request.Form["NombreUsuario"];
            var email = HttpContext.Request.Form["Email"];
            var contrasena = HttpContext.Request.Form["Contrasena"];


            var usuario = _usuarioRepositorio.GetUsuarioByID(Id);

            if (usuario == null)
            {
                _usuarioRepositorio.Save(new Usuario
                {
                    UsuarioID = Id,
                    NombreUsuario = nombre,
                    Email = email,
                    Contrasena=contrasena,

                }); ;
            }
            else
            {
                usuario.NombreUsuario = nombre;
                usuario.Email = email;
                usuario.Contrasena = contrasena;
                _usuarioRepositorio.Update();
            }

            var usuarios = _usuarioRepositorio.GetAllUsuario();

            return View("Logueate", usuarios);
        }

    }
}
