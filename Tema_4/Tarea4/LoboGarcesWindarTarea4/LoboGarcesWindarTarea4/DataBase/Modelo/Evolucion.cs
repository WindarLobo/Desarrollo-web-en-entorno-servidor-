using LoboGarcesWindarTarea4.Models;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LoboGarcesWindarTarea4.DataBase.Modelo
{
    [Table("evoluciona_de")]
    public class Evolucion
    {
        [Key]

        [Column("pokemon_evolucionado")]
        public int Pokemon_evolucionado { get; set; }

        [Column("pokemon_origen")]
        public int Pokemon_origen { get; set; }
     



    }
}
