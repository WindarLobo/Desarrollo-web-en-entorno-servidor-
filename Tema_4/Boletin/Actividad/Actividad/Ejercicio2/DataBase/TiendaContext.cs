using Ejercicio2.DataBase.Models;
using Microsoft.EntityFrameworkCore;

namespace Ejercicio2.DataBase
{
    public class TiendaContext : DbContext
    {
        public TiendaContext(DbContextOptions<TiendaContext> options) : base(options) { }
        public DbSet<Producto> Products { get; set; }
        
    }
}
