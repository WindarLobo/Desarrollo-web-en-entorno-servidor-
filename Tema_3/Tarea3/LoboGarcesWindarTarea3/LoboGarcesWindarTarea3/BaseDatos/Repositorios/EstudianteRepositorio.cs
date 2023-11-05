using LoboGarcesWindarTarea3.Database.Models;

namespace LoboGarcesWindarTarea3.Database.Repositorio;

//Implemento una interfaz IDisposable
public class EstudianteRepositorio : IDisposable
{

    //InstitutoMontecasteloContext _context esta variable se utiliza para acceder a la instancia del contexto de la base de datos.

    private readonly InstitutoMontecasteloContext _context;

    //EstudianteRepositorio(InstitutoMontecasteloContext context) defino  un constructor   

    public EstudianteRepositorio(InstitutoMontecasteloContext context)
    {
        _context = context;
    }

    // IQueryable<Estudiante> GetAllEstudiante(), añado este método que me devuelve una consulta de todos los Estudiante en la base de datos.
    public IQueryable<Estudiante> GetAllEstudiante()
    {
        return _context.Estudiantes.AsQueryable();
    }

    // Estudiante GetEstudianteByID(int id) añado este  método que recibe un parámetro id y devuelve la primer estudiante que tiene el mismo id.
    public Estudiante GetEstudianteByID(int id)
    {
        return _context.Estudiantes.FirstOrDefault(estudiante => estudiante.Id == id);
    }

    // Metodo Dispose() es parte de la implementación de la interfaz IDisposable.
    public void Dispose()
    {
        _context.Dispose();
    }
}


