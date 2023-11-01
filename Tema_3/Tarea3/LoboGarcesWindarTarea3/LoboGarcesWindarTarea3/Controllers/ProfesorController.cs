using LoboGarcesWindarTarea3.Database;
using Microsoft.AspNetCore.Mvc;
using LoboGarcesWindarTarea3.Database.Repositories;
using Microsoft.AspNetCore.Authorization;

namespace LoboGarcesWindarTarea3.Controllers
{
    public class ProfesorController : Controller
    {
        private readonly ProfesorRepositorio _profesorRepository;

        public ProfesorController(InstitutoMontecasteloContext context)
        {
            _profesorRepository = new ProfesorRepositorio(context);
        }

        [Route("/Profesor")]
        [Route("/Profesor/Lista")]
        public IActionResult Lista()
        {
            if (!Global.IsLogged)
            {
                return View(Global.LoginView);
            }

            var profesores = _profesorRepository.GetAllProfesor().ToList();
            return View(profesores);
        }
        [Route("/Profesor/Detalles/{id?}")]
        public IActionResult Detalles(int id)
        {
            if (!Global.IsLogged)
            {
                return View(Global.LoginView);
            }

            var profesores = _profesorRepository.GetProfesorByID(id);

            if (profesores == null)
                return NotFound();
            else
                return View(profesores);
        }

    }
}
