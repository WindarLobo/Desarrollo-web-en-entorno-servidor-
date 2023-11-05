using LoboGarcesWindarTarea3.Database.Models;

namespace LoboGarcesWindarTarea3.Database.Repositories;


//Implemento una interfaz IDisposable

public class ProfesorRepositorio : IDisposable
{
    //InstitutoMontecasteloContext _context esta variable se utiliza para acceder a la instancia del contexto de la base de datos.

    private readonly InstitutoMontecasteloContext _context;

    //ProfesorRepositorio(InstitutoMontecasteloContext context) defino  un constructor   

    public ProfesorRepositorio(InstitutoMontecasteloContext context)
    {
        _context = context;
    }

    // IQueryable<Profesor> GetAllProfesor() añado este método, que me devuelve  una consulta  de todos los profesores de la  base de datos.

    public IQueryable<Profesor> GetAllProfesor()
    {
        return _context.Profesores.AsQueryable();
    }
    // Profesor GetProfesorByID(int id) añado este  método que recibe un parámetro id y devuelve el primer profesor que tiene el mismo id.
    public Profesor GetProfesorByID(int id)
    {
        return _context.Profesores.FirstOrDefault(profesor => profesor.Id == id);
    }

    // Metodo Dispose() es parte de la implementación de la interfaz IDisposable.

    public void Dispose()
    {
        _context.Dispose();
    }
}


