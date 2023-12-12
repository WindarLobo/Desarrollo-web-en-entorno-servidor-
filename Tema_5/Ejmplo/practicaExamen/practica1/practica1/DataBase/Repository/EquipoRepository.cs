using practica1.DataBase.Models;

namespace practica1.DataBase.Repository
{


    public static  class EquipoRepository 

    {
        public static Equipo MiEquipo { get; set; } = new Equipo() { Pokemons = new List<Pokemon>() };


        public static Equipo AddPokemon(Pokemon pokemon)
        {

            if (MiEquipo!=null)
            {
                MiEquipo.Pokemons.Add(pokemon);

            }

            return MiEquipo;
        }

        
        public static Equipo MiEquipoTodo()
        {
            return MiEquipo;
        }
    }
}
