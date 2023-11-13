using EjemploDapper.DataBase.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;

namespace EjemploDapper.DataBase
{
    public class FutbolContext : DbContext
    {
        public DbSet<Futbolista>Futbolistas { get; set; }
        public DbSet<Equipo> Equipos { get; set; }

        public FutbolContext(DbContextOptions<FutbolContext> options) : base(options) { }
    }
}

