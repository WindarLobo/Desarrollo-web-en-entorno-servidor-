using Amazon_Montecastelo.Database.Models;

namespace Amazon_Montecastelo.Database.Interface
{
    public interface IVentaRepository
    {

        Task<Venta> Guardar(Venta venta);
        Task<Venta> ObtenerVenta(int UsuarioID);
        Task EliminarDelaVenta(int? ProductoID);
    }
}
