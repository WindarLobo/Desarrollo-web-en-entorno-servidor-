

namespace LoboGarcesWindarTarea4.DataBase.Modelo
{
    public class Tipo
    {
        public int TipoId { get; set; }
        public string TipoNombre { get; set; }

        public override string ToString()
        {
            return TipoNombre;
        }
    }
}
