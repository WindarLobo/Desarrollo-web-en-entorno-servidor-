using Microsoft.EntityFrameworkCore;

namespace WebApplication1.Controllers
{
    public class KiwiTpvContext : DbContext
    {
        public DbSet<Products> Products { get; set; }

        public string DbPath { get; }

        public KiwiTpvContext(DbContextOptions<KiwiTpvContext> options)
           : base(options)
        {
        }

    }

    public class Products
    {
        public int Id { get; set; }
        public string Name { get; set; }

    }
}
