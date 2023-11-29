

namespace LoboGarcesWindarTarea4.DataBase.Modelo;

//Tipo formato de cadena mediante la implementación del método ToString().
public class Tipo
{
    public int TipoId { get; set; }
    public string TipoNombre { get; set; }
    public override string ToString()
    {
        return TipoNombre;
    }

}
