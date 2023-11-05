
using LoboGarcesWindarTarea3.Database;
using Microsoft.AspNetCore.Mvc;
using LoboGarcesWindarTarea3.Database.Repositorio;

namespace LoboGarcesWindarTarea3.Controllers;

public class EstudianteController : Controller
{
    private readonly EstudianteRepositorio _estudianteRepository;


    //Contructor EstudianteController(InstitutoMontecasteloContext context),este repositorio se utiliza para interactuar con los datos  en la base de datos.
    public EstudianteController(InstitutoMontecasteloContext context)
    {
        _estudianteRepository = new EstudianteRepositorio(context);
    }

    // Rutas especifican  que se mapearán a los métodos del controlador.

    [Route("/Estudiante")]

    [Route("/Estudiante/Lista")]

    //Metodo IActionResult Lista(),si el usuario está autenticado, obtiene todos los estudiante  del repositorio y las pasa a la vista para su representación. Si el usuario no está autenticado, se redirige a la vista de inicio de sesión.
    public IActionResult Lista()
    {
        if (!Global.IsLogged)
        {
            return View(Global.LoginView);
        }
        var estudiantes = _estudianteRepository.GetAllEstudiante().ToList();

        return View(estudiantes);
    }
    // Rutas especifican  que se mapearán a los métodos del controlador.

    [Route("/Estudiante/Detalles/{id?}")]

    //Metodo IActionResult Detalles(int id),este metodo recibe un id, Si no se encuentra al alumno, devuelve una respuesta de error "NotFound".
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
