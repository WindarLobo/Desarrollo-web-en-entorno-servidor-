using LoboGarcesWindarTarea4.DataBase.Modelo;

namespace LoboGarcesWindarTarea4.Models
{
    public class ListaPokemonViewModel
    {
        public IEnumerable<Pokemon> Pokemons { get; set; }
        public IEnumerable<Tipo> Tipos { get; set; }
    }
}
