using LoboGarcesWindarTarea4.DataBase.Modelo;

namespace LoboGarcesWindarTarea4.Models
{
    public class SimularCombateViewModel
    {
        public List<PokemonFull> EquipoUsuario { get; set; }
        public List<PokemonFull> EquipoEnemigo { get; set; }
       
        public Equipo EquipoRandom1 { get; set; }
        public Equipo EquipoRandom2 { get; set; }
        public string  ResultadoBatalla { get; set; }
    }
}
