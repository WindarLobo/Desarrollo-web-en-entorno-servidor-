using Ejercicio2.DataBase.Models;

namespace Ejercicio2.DataBase.Repositorio
{
    public class FabricanteRepositorio : IDisposable
    {
        private readonly TiendaContext _context;

        public FabricanteRepositorio(TiendaContext context)
        {
            _context = context;
        }

        public IQueryable<Fabricante> GetAllFabricante()
        {
            return _context.Fabricantes.AsQueryable();
        }
        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
