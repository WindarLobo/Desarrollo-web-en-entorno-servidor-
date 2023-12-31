﻿using Pactica5.DataBase.Models;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Pactica5.Database.Models
{
  
    public class DetalleVenta
    {
    
        public int DetalleId { get; set; }

        public int VentaID { get; set; }
        public Venta Venta { get; set; }
        public int ProductoID { get; set; }

        public Producto Producto { get; set; }

        public int Cantidad { get; set; }
        public decimal PrecioUnitario { get; set; }
        public decimal PrecioTotal { get; set; }



    }
}
