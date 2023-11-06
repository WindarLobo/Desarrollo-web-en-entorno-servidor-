using Ejercicio2.DataBase.Models;
using Microsoft.EntityFrameworkCore;

namespace Ejercicio2.DataBase
{
    public class ProductContext : DbContext
    {
        public ProductContext(DbContextOptions<ProductContext> options) : base(options) { }
        public DbSet<Producto> Products { get; set; }
    }
}
