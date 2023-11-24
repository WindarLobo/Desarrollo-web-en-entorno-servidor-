using LoboGarcesWindarTarea4.DataBase.Modelo;
using System.Net.NetworkInformation;

namespace LoboGarcesWindarTarea4.DataBase.Repository
{
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

        public  static  Equipo MiEquipoTodo()
        {
            return MiEquipo;
        }

        public static Equipo GetRandomEquipo(List<Pokemon> allPokemons)
        {
            Equipo EquipoAleatorio = new()
            {
                Pokemons = new List<Pokemon>()
            };

            Random random = new();

            for (int i = 0; i < _maxPokemon; i++)
            {
                var index = random.Next(allPokemons.Count);
                EquipoAleatorio.Pokemons.Add(allPokemons[index]);
            }

            return EquipoAleatorio;
        }

    
    }

}

