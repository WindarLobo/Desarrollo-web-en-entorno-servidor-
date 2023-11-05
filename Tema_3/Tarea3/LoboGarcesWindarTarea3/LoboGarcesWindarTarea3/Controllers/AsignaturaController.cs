using LoboGarcesWindarTarea3.Database.Repositories;
using Microsoft.AspNetCore.Mvc;
using LoboGarcesWindarTarea3.Database;

namespace LoboGarcesWindarTarea3.Controllers
{
    public class AsignaturaController : Controller
    {
        private readonly AsignaturaRepositorio _asignaruraRepository;

        public AsignaturaController(InstitutoMontecasteloContext context)
        {
            _asignaruraRepository = new AsignaturaRepositorio(context);
        }

        [Route("/Asignatura")]

        [Route("/Asignatura/Lista")]
        public IActionResult Lista()
        {
            if (!Global.IsLogged)
            {
                return View(Global.LoginView);
            }

            var asignaturas = _asignaruraRepository.GetAllAsignatura().ToList();

            return View(asignaturas);
        }

        [Route("/Asignatura/Detalles/{id?}")]
        public IActionResult Detalles(int id)
        {
            if (!Global.IsLogged)
            {
                return View(Global.LoginView);
            }

            var asignatura = _asignaruraRepository.GetAsignaturaByID(id);

            if (asignatura == null)

                return NotFound();

            else

                return View(asignatura);
        }

    }
}
