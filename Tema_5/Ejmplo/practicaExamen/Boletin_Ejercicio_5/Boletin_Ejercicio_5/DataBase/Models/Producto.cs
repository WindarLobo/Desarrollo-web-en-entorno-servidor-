using System.ComponentModel.DataAnnotations;

namespace Boletin_Ejercicio_5.DataBase.Models
{
    public class Producto
    {
        public int Codigo { get; set; }

        public string Nombre { get; set; }

       
        public decimal Precio { get; set; }

        public int Codigo_Fabricante { get; set; }

      
    }
}
