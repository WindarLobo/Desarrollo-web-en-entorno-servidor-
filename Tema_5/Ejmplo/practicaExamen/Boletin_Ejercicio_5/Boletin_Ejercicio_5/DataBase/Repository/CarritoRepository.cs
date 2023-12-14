using Boletin_Ejercicio_5.DataBase.Models;

namespace Boletin_Ejercicio_5.DataBase.Repository
{
    public static class CarritoRepository
    {

        public static Carrito MiCarrito { get; set; } = new Carrito() { Productos = new List<Producto>() };


        public static Carrito AddProducto(Producto producto)
        {

            if (MiCarrito != null)
            {
                MiCarrito.Productos.Add(producto);

            }

            return MiCarrito;
        }


        public static Carrito MiCarritoTodo()
        {
            return MiCarrito;
        }
    }
}
