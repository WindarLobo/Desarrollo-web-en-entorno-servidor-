using Actividad2.Database.Models;

namespace Actividad2.Database.Repositories
{
    public class PokemonRepository : IDisposable
    {
        private readonly PokemonContext _context;

        public PokemonRepository(PokemonContext context)
        {
            _context = context;
        }

        public IEnumerable<Pokemon> GetAllPokemon()
        {
            return _context.Pokemons;
        }

        public Pokemon GetPokemonByID(int id)
        {
            return _context.Pokemons.FirstOrDefault(pokemon => pokemon.PokemonId == id);
        }

        public IEnumerable<Pokemon> GetPokemonByPesoAltura(double peso, double altura)
        {
            return _context.Pokemons.Where(x => x.peso == peso && x.altura == altura);
        }

        public void Save(Pokemon pokemon) 
        {
            _context.Pokemons.Add(pokemon);
            _context.SaveChanges();
        }

        public void Delete(int pokemonId)
        {
            var pokemon = GetPokemonByID(pokemonId);
            _context.Pokemons.Remove(pokemon);
            _context.SaveChanges();
        }

        public void Update()
        {
            _context.SaveChanges();
        }

        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
