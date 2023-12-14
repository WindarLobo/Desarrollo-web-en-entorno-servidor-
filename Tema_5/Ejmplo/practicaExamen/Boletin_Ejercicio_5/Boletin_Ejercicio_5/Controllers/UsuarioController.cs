using Boletin_Ejercicio_5.DataBase.Models;
using Boletin_Ejercicio_5.DataBase.Repository;
using Microsoft.AspNetCore.Mvc;

namespace Boletin_Ejercicio_5.Controllers
{
    public class UsuarioController : Controller
    {

        [Route("/Usuario")]
        [Route("/Usuario/Logueate")]

        public IActionResult Logueate()
        {
            return View();
        }

        [HttpPost]

        [Route("/Usuario/DoLogin")]

        public async Task<IActionResult> DoLogin(Usuario usuario)
        {
           

            // Simular la obtención de usuarios desde la base de datos o algún otro origen de datos
            List<Usuario> todosLosUsuarios = new List<Usuario>
                {
                    new Usuario { password = "123", Email = "john.doe@example.com",userType="admin", },
                    new Usuario { password = "123", Email = "jane.doe@example.com",userType="usuario", }
                };

            // Verificar si el usuario proporcionado en el inicio de sesión existe
            Usuario usuarioAutenticado = todosLosUsuarios.FirstOrDefault(u => u.Email == usuario.Email && u.password == usuario.password);

            if (usuarioAutenticado == null)
            {
                ViewBag.ErrorMessage = "Error de clave. Por favor, verifica tu correo y contraseña.";
                return View("Logueate");
            }

            // Almacenar el usuario autenticado en alguna variable global o en la sesión (dependiendo de tus necesidades)
            GlobalInfo.UsuarioLogeado = usuarioAutenticado;

            return View("/Views/Home/Index.cshtml");
        }

        [Route("/Usuario/SignOff")]
        public IActionResult SignOff()
        {

            GlobalInfo.UsuarioLogeado = null;

            return RedirectToAction("Logueate");
        }
       
    }

}


