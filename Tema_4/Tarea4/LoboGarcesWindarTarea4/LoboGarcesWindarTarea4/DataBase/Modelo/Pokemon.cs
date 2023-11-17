﻿namespace LoboGarcesWindarTarea4.DataBase.Modelo
{
  
    public class Pokemon
    {
        public int PokemonId { get; set; }
        public string NombrePokemon { get; set; }
        public int TipoID { get; set; }
        public string TipoPokemon { get; set; }
        public double Peso { get; set; }
        public double Altura { get; set; }
        public IEnumerable<Tipo> Tipos { get; set; }

    }
}
