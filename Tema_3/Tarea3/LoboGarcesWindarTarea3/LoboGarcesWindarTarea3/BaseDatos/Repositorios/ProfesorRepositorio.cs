using LoboGarcesWindarTarea3.Database.Models;

namespace LoboGarcesWindarTarea3.Database.Repositories
{
        public class ProfesorRepositorio : IDisposable
        {
            private readonly InstitutoMontecasteloContext _context;

            public ProfesorRepositorio(InstitutoMontecasteloContext context)
            {
                _context = context;
            }

            public IQueryable<Profesor> GetAllProfesor()
            {
                return _context.Profesores.AsQueryable();
            }
            public Profesor GetProfesorByID(int id)
            {
                return _context.Profesores.FirstOrDefault(estudiante => estudiante.Id == id);
            }
            public void Dispose()
            {
                _context.Dispose();
            }
        }
    }

