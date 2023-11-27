using LoboGarcesWindarTarea4.DataBase.Modelo;

namespace LoboGarcesWindarTarea4.Models
{
    public class SimularCombateViewModel
    {
       
        public Equipo Equipo1 { get; set; }
        public Equipo Equipo2 { get; set; }
        public string  ResultadoBatalla { get; set; }
        public IEnumerable<Pokemon> Pokemons { get; set; }
        public IEnumerable<Tipo> Tipos { get; set; }
        public bool MostrarResultados { get; set; }
    }
}
