using LoboGarcesWindarTarea4.DataBase.Modelo;

namespace LoboGarcesWindarTarea4.Models;

//PokemonViewModel contiene  una lista de Pokémon, e tipos, detalles del equipo.
public class PokemonViewModel
{
    public IEnumerable<Pokemon> Pokemons { get; set; }
    public IEnumerable<Tipo> Tipos { get; set; }
    public Equipo Equipo { get; set; }
    public string TipoPromedio { get; set; }
    public int Count { get; set; }
    public double PesoPromedio { get; set; }
    public double AturaPromedio { get; set; }

}
