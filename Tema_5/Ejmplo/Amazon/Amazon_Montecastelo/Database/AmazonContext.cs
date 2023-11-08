using Amazon_Montecastelo.Database.Models;
using Microsoft.EntityFrameworkCore;

namespace Amazon_Montecastelo.Database
{
    public class AmazonContext : DbContext
    {
        public AmazonContext(DbContextOptions<AmazonContext> options) : base(options) { }

        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Producto> Productos { get; set; }
    }
}
