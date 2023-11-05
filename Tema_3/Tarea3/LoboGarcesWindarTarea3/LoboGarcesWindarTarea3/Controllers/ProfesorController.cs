using LoboGarcesWindarTarea3.Database;
using Microsoft.AspNetCore.Mvc;
using LoboGarcesWindarTarea3.Database.Repositories;
using Microsoft.AspNetCore.Authorization;

namespace LoboGarcesWindarTarea3.Controllers;

public class ProfesorController : Controller
{
    private readonly ProfesorRepositorio _profesorRepository;


    //Contructor ProfesorController(InstitutoMontecasteloContext context),este repositorio se utiliza para interactuar con los datos en la base de datos.
    public ProfesorController(InstitutoMontecasteloContext context)
    {
        _profesorRepository = new ProfesorRepositorio(context);
    }

    // Rutas especifican  que se mapearán a los métodos del controlador. 

    [Route("/Profesor")]

    [Route("/Profesor/Lista")]

    //Metodo IActionResult Lista(),si el usuario está autenticado, obtiene todos los profesores del repositorio y las pasa a la vista para su representación. Si el usuario no está autenticado, se redirige a la vista de inicio de sesión.
    public IActionResult Lista()
    {
        if (!Global.IsLogged)
        {
            return View(Global.LoginView);
        }

        var profesores = _profesorRepository.GetAllProfesor().ToList();

        return View(profesores);
    }

    // Rutas especifican  que se mapearán a los métodos del controlador. 

    [Route("/Profesor/Detalles/{id?}")]

    //Metodo IActionResult Detalles(int id),este metodo recibe un id, Si no se encuentra, devuelve una respuesta de error "NotFound".

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
