using Actividad2.Database.Models;
using Microsoft.EntityFrameworkCore;

namespace Actividad2.Database
{
    public class PokemonContext : DbContext
    {
        public PokemonContext(DbContextOptions<PokemonContext> options) : base(options) { }
        public DbSet<Pokemon> Pokemons { get; set; }
    }
}
