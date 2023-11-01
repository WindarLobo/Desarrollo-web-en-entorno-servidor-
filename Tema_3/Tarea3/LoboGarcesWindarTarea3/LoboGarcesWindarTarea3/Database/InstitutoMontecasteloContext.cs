using LoboGarcesWindarTarea3.Database.Models;
using Microsoft.EntityFrameworkCore;

namespace LoboGarcesWindarTarea3.Database
{
    public class InstitutoMontecasteloContext : DbContext

    {
        public InstitutoMontecasteloContext(DbContextOptions<InstitutoMontecasteloContext> options) : base(options) { }
        public DbSet<Asignatura> Asignaturas { get; set; }
        public DbSet<Estudiante> Estudiantes { get; set; }
        public DbSet<Profesor> Profesores { get; set; }
        public DbSet<Login> Logins { get; set; }



    }
}
