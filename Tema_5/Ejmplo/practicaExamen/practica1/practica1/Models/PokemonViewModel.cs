using practica1.DataBase.Models;

namespace practica1.Models
{
    public class PokemonViewModel
    {
        public IEnumerable<Pokemon> Pokemons { get; set; }
        public Equipo Equipo { get; set; }
        public int Count { get; set; }
        public double PesoPromedio { get; set; }
        public double AturaPromedio { get; set; }
    }
}
