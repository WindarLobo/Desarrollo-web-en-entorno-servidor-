using Amazon_Montecastelo.Database.Models;

namespace Amazon_Montecastelo.Database.Repositorios
{
    public static class CarritoRepository
    {

        public  static Carrito _micarrito = new Carrito() { Detalles = new List<DetalleCarrito>() };

        public static void AddProducto(DetalleCarrito producto)
        {
            _micarrito.Detalles.Add(producto);
          
        }

        public static Carrito ObtenerCarrito()
        {
            return _micarrito;
        }
    }
}
