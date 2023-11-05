using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LoboGarcesWindarTarea3.Database.Models;

//[Table("Logins")] Mapeo a una tabla de la a base de datos 

[Table("Logins")]
public class Login
{
    // [Key] es la clave primaria de la tabla en la base de datos.

    [Key]

    //Defino las propiedades

    public int Id { get; set; }
    public string Username { get; set; }
    public string Password { get; set; }
}
