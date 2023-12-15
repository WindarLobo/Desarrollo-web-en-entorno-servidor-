using Microsoft.AspNetCore.Mvc;
using Pactica5.DataBase.Models;
using Pactica5.DataBase.Repository;
using Pactica5.DataBase;
using Pactica5.Models;

namespace Pactica5.Controllers
{
    public class LoginController : Controller
    {
        private readonly UsuarioRepository _usuarioRepositorio;

        public LoginController(Conexion context)
        {
            _usuarioRepositorio = new UsuarioRepository(context);
        }

        [Route("/Login")]
        [Route("/Login/Logueate")]

        public IActionResult Logueate()
        {
            return View();
        }

        [HttpPost]

        [Route("/Login/DoLogin")]

        public async Task<IActionResult> DoLogin(UsuarioViewModel usuario)
        {
            if (!ModelState.IsValid)
            {
                ViewBag.ErrorMessage = "Error de clave. Por favor, verifica tu correo  y contraseña.";
                return View("Logueate");
            }

            var login = await _usuarioRepositorio.GetLoginUsernamePassword(usuario.Email, usuario.Password);

            if (login == null)
            {
                ViewBag.ErrorMessage = "Error de clave. Por favor, verifica tu correo  y contraseña.";

                return View("Logueate");
            }

            GlobalInfo.UsuarioLogeado = login;

            return View("/Views/Home/Index.cshtml");
        }
        [Route("/Login/SignOff")]
        public IActionResult SignOff()
        {

            GlobalInfo.UsuarioLogeado = null;

            return RedirectToAction("Logueate");
        }

        [Route("/Login/agregar")]
        public IActionResult Agregar()
        {
            return View(new Usuario());
        }

        [HttpPost]
        [Route("/Login/Create")]
        public async Task<IActionResult> Create(Usuario usuario)
        {

            if (!ModelState.IsValid)
            {

                return RedirectToAction("Agregar");
            }
            await _usuarioRepositorio.CreateUsuarioo(usuario);

            return RedirectToAction("Logueate");
        }
    }
}
