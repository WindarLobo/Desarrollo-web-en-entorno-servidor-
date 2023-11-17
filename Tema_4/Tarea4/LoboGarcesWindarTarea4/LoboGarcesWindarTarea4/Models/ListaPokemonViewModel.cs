using LoboGarcesWindarTarea4.DataBase.Dbo;
using LoboGarcesWindarTarea4.DataBase.Modelo;

namespace LoboGarcesWindarTarea4.Models
{
    public class ListaPokemonViewModel
    {
        public IEnumerable<PokemonDbo> Pokemons { get; set; }
        public IEnumerable<Tipo> Tipos { get; set; }
    }
}
