﻿using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LoboGarcesWindarTarea3.Database.Models
{
    [Table("asignaturas")]
    public class Asignatura
    {
        [Key]

        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
 


    }
}

