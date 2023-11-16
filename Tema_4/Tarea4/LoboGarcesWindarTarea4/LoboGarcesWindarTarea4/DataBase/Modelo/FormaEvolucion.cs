using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LoboGarcesWindarTarea4.DataBase.Modelo
{
    [Table("forma_evolucion")]
    public class FormaEvolucion
    {
        [Key]
        public int Id_Forma_Evolucion { get; set; }
        public string Tipo_Evolucion { get; set; }
        public TipoEvolucion TipoEvolucion { get; set; }
    }
}
