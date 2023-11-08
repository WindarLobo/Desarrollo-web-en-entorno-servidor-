using Amazon_Montecastelo.Database.Models;

namespace Amazon_Montecastelo.Database.Repositorios
{
    public class ProductoReposiotiro : IDisposable
    {
        public readonly AmazonContext _context;

        public ProductoReposiotiro (AmazonContext context)
        {
            _context = context;
        }

        public IQueryable<Producto> GetAllProducto()
        {
            return _context.Productos.AsQueryable();
        }
        public Producto GetProductoByID(int id)
        {
            return _context.Productos.FirstOrDefault(producto => producto.ProductoID == id);
        }
   
        public void Save(Producto producto)
        {
            _context.Productos.Add(producto);
            _context.SaveChanges();
        }
        public void Update()
        {
            _context.SaveChanges();
        }
        public void Delete(int id)
        {
            var producto = GetProductoByID(id);
            if (producto != null)
            {
                _context.Productos.Remove(producto);
                _context.SaveChanges();
            }
        }




        public void Dispose()
        {
            _context.Dispose();
        }


    }

}
