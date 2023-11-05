using LoboGarcesWindarTarea3.Database.Models;

namespace LoboGarcesWindarTarea3.Database.Repositorio
{
 
        public class EstudianteRepositorio : IDisposable
        {
            private readonly InstitutoMontecasteloContext _context;

            public EstudianteRepositorio(InstitutoMontecasteloContext context)
            {
                _context = context;
            }

            public IQueryable<Estudiante> GetAllEstudiante()
            {
                return _context.Estudiantes.AsQueryable();
            }
            public Estudiante GetEstudianteByID(int id)
            {
                return _context.Estudiantes.FirstOrDefault(estudiante => estudiante.Id == id);
            }
            public void Dispose()
            {
                _context.Dispose();
            }
        }
    }

