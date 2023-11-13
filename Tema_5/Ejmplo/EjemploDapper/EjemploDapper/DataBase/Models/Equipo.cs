using System.ComponentModel.DataAnnotations;
using EjemploDapper.DataBase.MetaData;

namespace EjemploDapper.DataBase.Models
{
    [MetadataType(typeof(EquiposMetaData))]
    public class Equipo
    {
        public string Codigo { get; set; }
        public string Nombre { get; set; }
        public string Pais { get; set; }

        public int Goles { get; set; }
        public int Puntos { get; set; }
        public string PJ { get; set; }
        public int PG { get; set; }
        public int PE { get; set; }
        public int PP { get; set; }
        public string Estadio { get; set; }
        public string Ciudad { get; set; }
    }
}
