using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Ejemplo.Database.Models
{

    [Table("pokemon")]
    public class Pokemon
    {
        [Key]
        public int numero_pokedex { get; set; }
        public string Nombre { get; set; }
        public double peso { get; set; }
        public double altura { get; set; }

    }
}

