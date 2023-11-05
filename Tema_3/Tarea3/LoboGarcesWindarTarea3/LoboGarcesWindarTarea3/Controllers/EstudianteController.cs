
using LoboGarcesWindarTarea3.Database;
using Microsoft.AspNetCore.Mvc;
using LoboGarcesWindarTarea3.Database.Repositorio;

namespace LoboGarcesWindarTarea3.Controllers
{
    public class EstudianteController : Controller
    {
        private readonly EstudianteRepositorio _estudianteRepository;

        public EstudianteController(InstitutoMontecasteloContext context)
        {
            _estudianteRepository = new EstudianteRepositorio(context);
        }

        [Route("/Estudiante")]

        [Route("/Estudiante/Lista")]
        public IActionResult Lista()
        {
            if (!Global.IsLogged)
            {
                return View(Global.LoginView);
            }
            var estudiantes = _estudianteRepository.GetAllEstudiante().ToList();

            return View(estudiantes);
        }

        [Route("/Estudiante/Detalles/{id?}")]
        public IActionResult Detalles(int id)
        {
            if (!Global.IsLogged)
            {
                return View(Global.LoginView);
            }

            var estudiantes = _estudianteRepository.GetEstudianteByID(id);

            if (estudiantes == null)

                return NotFound();

            else

                return View(estudiantes);
        }

    }
}
