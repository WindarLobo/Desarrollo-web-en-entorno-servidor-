using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LoboGarcesWindarTarea4.DataBase.Modelo
{
    [Table("nivel_evolucion")]
    public class Nivel_Evolucion
    {
        [Key]
        public int ID_Forma_Evolucion { get; set; }
        public int Nivel { get; set; }
      

    }
}
