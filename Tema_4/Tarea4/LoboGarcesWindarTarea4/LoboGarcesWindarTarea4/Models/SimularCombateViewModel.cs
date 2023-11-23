using LoboGarcesWindarTarea4.DataBase.Modelo;

namespace LoboGarcesWindarTarea4.Models
{
    public class SimularCombateViewModel
    {
        public List<PokemonFull> EquipoUsuario { get; set; }
        public List<PokemonFull> EquipoEnemigo { get; set; }
        public string ResultadoCombate { get; set; }
    }
}
