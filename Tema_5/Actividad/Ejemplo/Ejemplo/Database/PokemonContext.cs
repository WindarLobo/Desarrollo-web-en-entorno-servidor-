using Ejemplo.Database.Models;
using Microsoft.EntityFrameworkCore;

namespace Ejemplo.Database
{
    public class PokemonContext : DbContext
    {
        public DbSet<Pokemon> Pokemons { get; set; }

        public PokemonContext(DbContextOptions<PokemonContext> options) : base(options) { }
    }
}
