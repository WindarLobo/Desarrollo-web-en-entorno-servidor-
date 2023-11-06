using System;
using System.Collections.Generic;

namespace Activida2.Models
{
    public partial class Producto
    {
        public int Id { get; set; }
        public string? Nombre { get; set; }
        public decimal? Precio { get; set; }
    }
}
