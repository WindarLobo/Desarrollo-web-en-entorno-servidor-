using LoboGarcesWindarTarea4.DataBase.Modelo;

namespace LoboGarcesWindarTarea4.DataBase.Repository
{
    public static class EquipoReposiotrio
    {
        private const int _maxPokemon = 6;

        public static Equipo MiEquipo { get; set; }

        public static (bool Añadido, string Mensaje) AddPokemon(PokemonFull pokemon)
        {
            if (MiEquipo == null)
            {
                MiEquipo = new Equipo
                {
                    Pokemons = new List<PokemonFull>()
                };
            }

            if(MiEquipo.Pokemons.Count == _maxPokemon)
            {
                return (false, "¡Tu equipo ya tiene 6 Pokémon!");
            }

            MiEquipo.Pokemons.Add(pokemon);

            return (true, "¡Pokémon añadido al equipo exitosamente!");
        }

     
        public static bool IsEquipo { get { return MiEquipo != null; } }
    }
}
