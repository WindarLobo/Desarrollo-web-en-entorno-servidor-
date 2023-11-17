namespace LoboGarcesWindarTarea4.DataBase.Modelo
{

    public class Pokemon
    {
        public int PokemonId { get; set; }
        public string NombrePokemon { get; set; }
        public double Peso { get; set; }
        public double Altura { get; set; }
        public List<Tipo> Tipos { get; set; }
        public string AllTipos
        {
            get
            {
                return string.Join(", ", Tipos);
            }
        }
    }

    public class PokemonFull : Pokemon
    {
        public IEnumerable<Ataque> Ataques { get; set; }   
        public IEnumerable<Evolucion> Evoluciones { get; set; }
    }
}
