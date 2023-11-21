

namespace LoboGarcesWindarTarea4.DataBase.Modelo
{
    public  class Equipo
    {
        public  List<PokemonFull> Pokemons { get; set; }=new List<PokemonFull>();
        
        public static  List<PokemonFull> PokemonAleatorio { get; set; } = new List<PokemonFull>();
      
    }
   
}



