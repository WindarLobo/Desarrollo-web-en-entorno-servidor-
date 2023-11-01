using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Actividad2.Database.Models
{
    [Table("pokemon")]
    public class Pokemon
    {
        [Key]
        [Column("numero_pokedex")]
        public int PokemonId { get; set; }

        [Column("nombre")]
        public string Name { get; set; }
        public double peso { get; set; }
        public double altura { get; set; }
    }
}
