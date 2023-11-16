using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LoboGarcesWindarTarea4.DataBase.Modelo
{
    [Table("tipo_evolucion")]
    public class TipoEvolucion
    {
        [Key]
        public int Id_Tipo_Evolucion { get; set; }
        public string Tipo_Evolucion { get; set; }
    }
}
