namespace LoboGarcesWindarTarea4.DataBase.Modelo
{
    public class Ataque
    {
        public int ID_Tipo { get; set; }
        public string TipoPokemon { get; set; }
        public int ID_Tipo_Ataque { get; set; }
        public string TipoAtaque { get; set; }
        public string NombreAtaque { get; set; }
        public string Descripcion { get; set; }
        public int Potencia { get; set; }
        public int Precision { get; set; }
        public int Pp { get; set; }
        public int Prioridad { get; set; }

    }
}
