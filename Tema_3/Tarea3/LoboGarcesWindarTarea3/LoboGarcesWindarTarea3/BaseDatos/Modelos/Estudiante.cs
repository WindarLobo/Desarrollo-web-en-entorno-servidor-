using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LoboGarcesWindarTarea3.Database.Models
{
    [Table("estudiantes")]
    public class Estudiante

    {
        [Key]
        public int Id { get; set; }
        public string Nombre { get; set; }
        public int Edad { get;set; }
        public string Curso { get; set; }   

    }
}
