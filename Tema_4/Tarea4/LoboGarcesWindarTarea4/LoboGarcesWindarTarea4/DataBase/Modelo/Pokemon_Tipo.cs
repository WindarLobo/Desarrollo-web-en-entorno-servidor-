using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LoboGarcesWindarTarea4.DataBase.Modelo
{
    [Table("pokemon_tipo")]
    public class Pokemon_Tipo
    {
        [Key]
        public int numero_pokedex { get; set; }
        [Key]
        public int id_tipo { get; set; }
        



    }
}
