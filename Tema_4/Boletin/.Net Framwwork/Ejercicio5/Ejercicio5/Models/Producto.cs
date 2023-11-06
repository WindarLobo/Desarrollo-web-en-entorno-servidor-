using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Ejercicio5.Models
{
    public partial class Producto
    {
      
        public int Id { get; set; }
        public string? Nombre { get; set; }
      
        public decimal Precio { get; set; }
    }
}
