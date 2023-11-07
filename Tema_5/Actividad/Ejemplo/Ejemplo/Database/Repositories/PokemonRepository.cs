using Ejemplo.Database.Models;

namespace Ejemplo.Database.Repositories
{
    public class PokemonRepository : IDisposable
    {
        private readonly PokemonContext _context;

        public PokemonRepository(PokemonContext context)
        {
            _context = context;
        }

        public IQueryable<Pokemon> GetAllPokemon()
        {
            return _context.Pokemons.AsQueryable();
        }

        public Pokemon GetpokemonByID(int id)
        {
            return _context.Pokemons.FirstOrDefault(pokemon => pokemon.numero_pokedex == id);
        }

        public IEnumerable<Pokemon> GetPokemonPesoAltura(double peso, double altura)
        {
            return _context.Pokemons.Where(x => x.peso == peso && x.altura == altura);
        }
        public void Delete(int id)
        {
            var pokemon = GetpokemonByID(id);
            _context.Pokemons.Remove(pokemon);
            _context.SaveChanges();
        }
        public void Save(Pokemon pokemon)
        {
            _context.Pokemons.Add(pokemon);
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

