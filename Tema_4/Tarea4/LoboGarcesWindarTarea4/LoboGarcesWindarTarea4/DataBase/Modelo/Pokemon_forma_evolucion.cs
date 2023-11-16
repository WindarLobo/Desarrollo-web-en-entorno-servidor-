using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LoboGarcesWindarTarea4.DataBase.Modelo
{
    [Table("pokemon_forma_evolucion")]
    public class Pokemon_forma_evolucion
    {
        [Key]
        public int numero_Pokedex { get; set; }

        [Key]
        public int Id_forma_Evolucion { get; set; }
    }
}
