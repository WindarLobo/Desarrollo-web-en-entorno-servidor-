using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LoboGarcesWindarTarea3.Database.Models;

//[Table("Asignaturas")] Mapeo a una tabla de la a base de datos 

[Table("Asignaturas")]
public class Asignatura
{
    // [Key] es la clave primaria de la tabla en la base de datos.

    [Key]

    //Defino las propiedades
    public int Id { get; set; }
    public string Nombre { get; set; }
    public string Descripcion { get; set; }



}

