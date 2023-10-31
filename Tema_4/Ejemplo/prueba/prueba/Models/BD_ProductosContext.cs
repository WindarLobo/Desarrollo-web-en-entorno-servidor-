
using Microsoft.EntityFrameworkCore;


namespace prueba.Models
{
    public partial class BD_ProductosContext : DbContext
    {
       

        public BD_ProductosContext(DbContextOptions<BD_ProductosContext> options)
            : base(options)
        {
        }
        public virtual DbSet<Producto> Productos { get; set; }
        public string DbPath { get; }

    }
}
