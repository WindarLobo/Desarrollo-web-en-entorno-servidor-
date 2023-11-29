using LoboGarcesWindarTarea4.DataBase.Modelo;

namespace LoboGarcesWindarTarea4.DataBase.Repository;


// EquipoReposiotrio proporciona funcionalidades para gestionar equipos de Pokémon, permitiendo añadir Pokémon al equipo.
public static class EquipoReposiotrio
{
    private const int _maxPokemon = 6;

    public static Equipo MiEquipo { get; set; } = new Equipo() { Pokemons = new List<Pokemon>()};


    public static (bool Añadido, string Mensaje) AddPokemon(Pokemon pokemon)
    {

        if (MiEquipo.Pokemons.Count == _maxPokemon)
        {
            return (false, "¡Tu equipo ya tiene 6 Pokémon!" );

        }

        MiEquipo.Pokemons.Add(pokemon);

        return (true, "¡Pokémon añadido al equipo exitosamente!");


    }

    //MiEquipoTodo obtengo el equipo actual .
    public static  Equipo MiEquipoTodo()
    {
        return MiEquipo;
    }

    //GetRandomMiEquipo genera  equipos aleatorio.
    public static Equipo GetRandomMiEquipo(List<Pokemon> allPokemons, int? numeroPokemon = null)
    {
        Equipo EquipoAleatorio = new()
        {
            Pokemons = new List<Pokemon>()
        };

        Random random = new();

        var maximo = numeroPokemon ?? _maxPokemon;

        for (int i = 0; i < maximo; i++)
        {
            var index = random.Next(allPokemons.Count);

            EquipoAleatorio.Pokemons.Add(allPokemons[index]);
        }

        return EquipoAleatorio;
    }

  
}

