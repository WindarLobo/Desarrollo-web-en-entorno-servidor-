
using Amazon_Montecastelo.Database.Models;
using Microsoft.EntityFrameworkCore;

namespace Amazon_Montecastelo.Database.Repositorios
{
    public class VentasRepositorio : IDisposable
    {
        private readonly AmazonContext _context;

        public VentasRepositorio(AmazonContext context)
        {
            _context = context;
        }

        public void AgregarAlCarrito(int usuarioId, int productoId)
        {
            var carrito = _context.Ventas.SingleOrDefault(v => v.UsuarioID == usuarioId);

            if (carrito == null)
            {
                carrito = new Venta
                {
                    UsuarioID = usuarioId,
                    FechaVenta = DateTime.UtcNow,
                    Detalles = new List<DetalleVenta>()
                    
                };
            }
            else
            {
                carrito.Detalles = _context.DetalleVentas.Where(x => x.VentaID == carrito.VentaId).ToList();
            }

            var producto = _context.Productos.Find(productoId);
            var detalleVenta = new DetalleVenta
            {
                ProductoID = productoId,
                Cantidad = 1,
                PrecioUnitario = producto.Precio,
                PrecioTotal = 1 * producto.Precio
            };



            carrito.Detalles.Add(detalleVenta);

            carrito.TotalVenta += detalleVenta.PrecioTotal;

            _context.Ventas.Add(carrito);

            _context.SaveChanges();
        }

        public Venta ObtenerCarrito(int usuarioId)
        {
            var venta = _context.Ventas.SingleOrDefault(v => v.UsuarioID == usuarioId);

            if(venta != null)
            {
                venta.Detalles = _context.DetalleVentas.Where(x => x.VentaID == venta.VentaId).ToList();

                foreach(var detalle in venta.Detalles)
                {
                    detalle.Producto = _context.Productos.Single(x => x.ProductoID == detalle.ProductoID);
                }

            }

            return venta ?? new Venta();
        }

        public void RealizarCompra(int usuarioId)
        {
            var carrito = _context.Ventas.SingleOrDefault(v => v.UsuarioID == usuarioId && v.FechaVenta == null);

            if (carrito != null)
            {
                carrito.FechaVenta = DateTime.Now;
                _context.SaveChanges();
            }
        }
        public void EliminarDelCarrito(int usuarioId, int productoId)
        {
            //var carrito = _context.Ventas.SingleOrDefault(v => v.UsuarioID == usuarioId && v.FechaVenta == null);

            //if (carrito != null)
            //{
            //    //var detalleAEliminar = _context.DetalleVentas
            //    //    .SingleOrDefault(d => d.VentaId == carrito.VentaId && d.ProductoID == productoId);

            //    if (detalleAEliminar != null)
            //    {
            //        // Elimina el detalle de venta asociado al producto en el carrito
            //        _context.DetalleVentas.Remove(detalleAEliminar);
            //        _context.SaveChanges();

            //        // Actualiza el total de la venta en el carrito
            //        carrito.TotalVenta -= detalleAEliminar.PrecioTotal;
            //        _context.SaveChanges();
            //    }
            //}
        }
        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
