using Amazon_Montecastelo.Database.Models;
using Microsoft.EntityFrameworkCore;

namespace Amazon_Montecastelo.Database.Repositorios
{
    public class CarritoRepositorio : IDisposable
    {
        private readonly AmazonContext _context;

        public CarritoRepositorio(AmazonContext context)
        {
            _context = context;
        }

        public void AgregarAlCarrito(int usuarioId, int productoId, int cantidad)
        {
            var carrito = _context.Carrito
                .Include(c => c.Detalles)
                .SingleOrDefault(v => v.UsuarioID == usuarioId);

            if (carrito == null)
            {
                carrito = new Carrito
                {
                    UsuarioID = usuarioId,
                    FechaCarrito = DateTime.UtcNow,
                    Detalles = new List<DetalleCarrito>()
                };

                _context.Carrito.Add(carrito);
            }

            var detalleExistente = carrito.Detalles.SingleOrDefault(d => d.ProductoID == productoId);

            if (detalleExistente == null)
            {
                var producto = _context.Productos.Find(productoId);

                var detalleCarrito = new DetalleCarrito
                {
                    ProductoID = productoId,
                    Cantidad = cantidad,
                    PrecioUnitario = producto.Precio,
                    PrecioTotal = cantidad * producto.Precio
                };

                carrito.Detalles.Add(detalleCarrito);
            }
            else
            {
               
                detalleExistente.Cantidad += cantidad;
                detalleExistente.PrecioTotal = detalleExistente.Cantidad * detalleExistente.PrecioUnitario;
            }

            carrito.TotalVenta = carrito.Detalles.Sum(d => d.PrecioTotal);

            _context.SaveChanges();
        }


        public Carrito ObtenerCarrito(int usuarioId)
        {
            var carrito = _context.Carrito.SingleOrDefault(v => v.UsuarioID == usuarioId);

            if (carrito != null)
            {
                carrito.Detalles = _context.DetalleCarritos.Where(x => x.CarritoID == carrito.CarritoID).ToList();

                foreach (var detalle in carrito.Detalles)
                {
                    detalle.Producto = _context.Productos.Single(x => x.ProductoID == detalle.ProductoID);
                }

            }

            return carrito ?? new Carrito();
        }

        public void EliminarDelCarrito(int usuarioId, int productoId)
        {
            var carrito = _context.Carrito.SingleOrDefault(v => v.UsuarioID == usuarioId );

            if (carrito != null)
            {
                var detalleAEliminar = _context.DetalleCarritos
                    .SingleOrDefault(d => d.CarritoID == carrito.CarritoID && d.ProductoID == productoId);

                if (detalleAEliminar != null)
                {
                    
                    _context.DetalleCarritos.Remove(detalleAEliminar);
                    _context.SaveChanges();

                  
                    carrito.TotalVenta -= detalleAEliminar.PrecioTotal;
                    _context.SaveChanges();
                }
            }
        }
        public void Dispose()
        {
            _context.Dispose();
        }
    }
}

