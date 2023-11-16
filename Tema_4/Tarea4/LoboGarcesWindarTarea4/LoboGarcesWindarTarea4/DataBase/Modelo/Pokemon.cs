using LoboGarcesWindarTarea4.Models;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LoboGarcesWindarTarea4.DataBase.Modelo
{
    [Table("Pokemon")]
    public class Pokemon
    {
        [Key]
        public int numero_Pokedex { get; set; }
        public string Nombre { get; set; }
        public double Peso { get; set; }
        public double Altura { get; set; }
        public List<Tipo> tipo { get; set; }

       



    }
}
