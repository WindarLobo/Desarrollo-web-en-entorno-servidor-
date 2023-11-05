using LoboGarcesWindarTarea3.Database.Models;

namespace LoboGarcesWindarTarea3.Database.Repositories
{
    public class AsignaturaRepositorio : IDisposable
    {
        private readonly InstitutoMontecasteloContext _context;

        public AsignaturaRepositorio(InstitutoMontecasteloContext context)
        {
            _context = context;
        }

        public IQueryable<Asignatura> GetAllAsignatura()
        {
            return _context.Asignaturas.AsQueryable();
        }
        public Asignatura GetAsignaturaByID(int id)
        {
            return _context.Asignaturas.FirstOrDefault(asignatura => asignatura.Id == id);
        }

        
        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
