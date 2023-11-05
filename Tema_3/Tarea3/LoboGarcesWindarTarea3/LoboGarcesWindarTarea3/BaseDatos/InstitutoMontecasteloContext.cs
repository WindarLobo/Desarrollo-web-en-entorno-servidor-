using LoboGarcesWindarTarea3.Database.Models;
using Microsoft.EntityFrameworkCore;

namespace LoboGarcesWindarTarea3.Database;

//InstitutoMontecasteloContext representa el contexto de la base de datos para las entidades Asignatura, Estudiante, Profesor y Login. 
public class InstitutoMontecasteloContext : DbContext
{
    // Este es el constructor de la clase. 
    public InstitutoMontecasteloContext(DbContextOptions<InstitutoMontecasteloContext> options) : base(options) { }

    // DbSet<> es una colección de objetos, que se utilizará para consultar y guardar datos de la tabla en la base de datos.

    public DbSet<Asignatura> Asignaturas { get; set; }
    public DbSet<Estudiante> Estudiantes { get; set; }
    public DbSet<Profesor> Profesores { get; set; }
    public DbSet<Login> Logins { get; set; }



}
