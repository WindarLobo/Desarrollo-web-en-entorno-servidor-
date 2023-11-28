namespace LoboGarcesWindarTarea4.DataBase.Modelo
{
    public class Batalla
    {
        public Equipo Equipo1 { get; set; }
        public Equipo Equipo2 { get; set; }
        public List<Combate> Combates { get; set; } = new List<Combate>();
    }
}
