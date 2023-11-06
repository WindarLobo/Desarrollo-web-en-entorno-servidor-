using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LoboGarcesWindarTarea3.Database.Models;

//[Table("Profesores")] Mapeo a una tabla de la a base de datos 

[Table("Profesores")]
public class Profesor
{
    // [Key] es la clave primaria de la tabla en la base de datos.

    [Key]

    //Defino las propiedades
    public int Id { get; set; }
    public string Nombre { get; set; }
    public int Edad { get; set; }
    public string Materia { get; set; }
}
