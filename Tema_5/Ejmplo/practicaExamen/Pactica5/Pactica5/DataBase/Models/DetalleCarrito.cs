namespace Pactica5.DataBase.Models
{
    public class DetalleCarrito
    {
        public int DetalleID { get; set; }
        public int CarritoID { get; set; }
        public Carrito Carrito { get; set; }
        public int ProductoID { get; set; }
        public Producto Producto { get; set; }
        public int Cantidad { get; set; }
        public decimal PrecioUnitario { get; set; }
        public decimal PrecioTotal { get; set; }
    }
}
