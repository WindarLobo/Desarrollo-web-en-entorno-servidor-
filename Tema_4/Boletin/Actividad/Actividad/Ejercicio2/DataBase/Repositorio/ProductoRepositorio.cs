using Ejercicio2.DataBase.Models;
namespace Ejercicio2.DataBase.Repositorio
{
    public class ProductoRepositorio : IDisposable
    {

        private readonly TiendaContext _context;

        public ProductoRepositorio(TiendaContext context)
        {
            _context = context;
        }

        public IQueryable<Producto> GetAllProducto()
        {
            return _context.Products.AsQueryable();
        }


        public Producto GetProductoByID(int id)
        {
            return _context.Products.FirstOrDefault(producto => producto.Codigo == id);
        }


        public void Delete(int id)
        {
            var producto = GetProductoByID( id);
            _context.Products.Remove(producto);
            _context.SaveChanges();
        }
        public void Save(Producto producto)
        {
            _context.Products.Add(producto);
            _context.SaveChanges();
        }

        public void Update()
        {
            _context.SaveChanges();
        }
        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
