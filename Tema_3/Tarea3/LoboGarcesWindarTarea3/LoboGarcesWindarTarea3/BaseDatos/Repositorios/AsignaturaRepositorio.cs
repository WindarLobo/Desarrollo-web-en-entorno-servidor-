using LoboGarcesWindarTarea3.Database.Models;

namespace LoboGarcesWindarTarea3.Database.Repositories;


//Implemento una interfaz IDisposable
public class AsignaturaRepositorio : IDisposable
{
    //InstitutoMontecasteloContext _context esta variable se utiliza para acceder a la instancia del contexto de la base de datos.

    private readonly InstitutoMontecasteloContext _context;

    //AsignaturaRepositorio(InstitutoMontecasteloContext context) defino  un constructor   
    public AsignaturaRepositorio(InstitutoMontecasteloContext context)
    {
        _context = context;
    }

    // IQueryable<Asignatura> GetAllAsignatura() añado este método, que me devuelve  una consulta  de todas las asignaturas en la base de datos.
    public IQueryable<Asignatura> GetAllAsignatura()
    {
        return _context.Asignaturas.AsQueryable();
    }

    // Asignatura GetAsignaturaByID(int id) añado este  método que recibe un parámetro id y devuelve la primera asignatura que tiene el mismo id.
    public Asignatura GetAsignaturaByID(int id)
    {
        return _context.Asignaturas.FirstOrDefault(asignatura => asignatura.Id == id);
    }


    // Metodo Dispose() es parte de la implementación de la interfaz IDisposable.
    public void Dispose()
    {
        _context.Dispose();
    }
}
