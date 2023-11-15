

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LoboGarcesWindarTarea4.DataBase.Modelo
{
    [Table("tipo")]
    public class Tipo

    {
        [Key]
        public int id_tipo { get; set; }
        public string nombre { get; set; }
        public int id_tipo_ataque { get; set; }
    }
}
