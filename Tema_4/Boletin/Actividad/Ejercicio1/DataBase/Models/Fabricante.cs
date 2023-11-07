using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Ejercicio2.DataBase.Models
{
    [Table("Fabricante")]
    public class Fabricante
    {
     
            [Key]

            public int codigo { get; set; }
            public string Nombre { get; set; }
          

        
    }
}
