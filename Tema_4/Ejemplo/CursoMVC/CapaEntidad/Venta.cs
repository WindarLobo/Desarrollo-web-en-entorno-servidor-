using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class Venta
    {

        public int idVenta { set; get; }
        public int idCliente { set; get; }
        public int TotalProducto { set; get; }
        public decimal  MontoTotal { set; get; }
        public string  Contacto { set; get; }
        public string  IdDistrito { set; get; }
        public string Telefono  { set; get; }
        public string Direccion { set; get; }
        public string FechaTexto { get; set; }
        public string IdTransaccion { get; set; }
        public List<DetalleVenta> DetalleVentas {  get; set; }

    }
}
