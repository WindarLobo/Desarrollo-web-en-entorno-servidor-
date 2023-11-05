using LoboGarcesWindarTarea3.Database.Repositories;
using Microsoft.AspNetCore.Mvc;
using LoboGarcesWindarTarea3.Database;

namespace LoboGarcesWindarTarea3.Controllers;

public class AsignaturaController : Controller
{
    private readonly AsignaturaRepositorio _asignaruraRepository;

    //Contructor AsignaturaController(InstitutoMontecasteloContext context),este repositorio se utiliza para interactuar con los datos de las asignaturas en la base de datos.
    public AsignaturaController(InstitutoMontecasteloContext context)
    {
        _asignaruraRepository = new AsignaturaRepositorio(context);
    }

    // Rutas especifican  que se mapearán a los métodos del controlador. 

    [Route("/Asignatura")]

    [Route("/Asignatura/Lista")]

    //Metodo IActionResult Lista(),si el usuario está autenticado, obtiene todas las asignaturas del repositorio _asignaturaRepository y las pasa a la vista para su representación. Si el usuario no está autenticado, se redirige a la vista de inicio de sesión.
    public IActionResult Lista()
    {
        if (!Global.IsLogged)
        {
            return View(Global.LoginView);
        }

        var asignaturas = _asignaruraRepository.GetAllAsignatura().ToList();

        return View(asignaturas);
    }

    // Rutas especifican  que se mapearán a los métodos del controlador. 

    [Route("/Asignatura/Detalles/{id?}")]

    //Metodo IActionResult Detalles(int id),este metodo recibe un id, Si no se encuentra la asignatura, devuelve una respuesta de error "NotFound".

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
