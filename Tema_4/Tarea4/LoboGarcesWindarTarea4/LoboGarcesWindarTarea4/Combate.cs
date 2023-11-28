using LoboGarcesWindarTarea4.DataBase.Modelo;
using System.Text;

namespace LoboGarcesWindarTarea4.Models
{
    public class Combate
    {
        //RealizarCombate() se encarga de la simulación de combates entre Pokémon de dos equipos y genera un mensaje HTML. 
        public static string RealizarCombate(Equipo equipo1, Equipo equipo2)
        {

            var resultadoCombate = new StringBuilder();

            int cantidadPokemons = Math.Min(equipo1.Pokemons.Count, equipo2.Pokemons.Count);

            for (int i = 0; i < cantidadPokemons; i++)
            {
                var pokemon1 = equipo1.Pokemons[i];

                var pokemon2 = equipo2.Pokemons[i];

                resultadoCombate.AppendLine($"<span style='font-size: 25px;'>Combate {i + 1}: <img src='/img/{pokemon1.PokemonId}.png' alt='{pokemon1.NombrePokemon}' style='width: 180px; height: 180px;'> {pokemon1.NombrePokemon}   VS   {pokemon2.NombrePokemon}<img src='/img/{pokemon2.PokemonId}.png' alt='{pokemon2.NombrePokemon}' style='width: 180px; height: 180px;'></span>");

               //DeterminarGanadorCombate formato del mensaje HTML que incluye  imágenes de los Pokémon, sus nombres y el ganador de cada combate.

                var ganador = DeterminarGanadorCombate(pokemon1, pokemon2);

                resultadoCombate.AppendLine($"<span style='font-size: 20px; color:#CB4335'>Ganador: {ganador}</span>");

                resultadoCombate.AppendLine();
            }

            return resultadoCombate.ToString();
        }


        private static string DeterminarGanadorCombate(Pokemon pokemon1, Pokemon pokemon2)
        {
            // Lógica de combate: Regla general - el tipo más fuerte gana
            var tipoGanador =  CompararTipoFuerte.CompararTipos(pokemon1.Tipos, pokemon2.Tipos);

            if (tipoGanador != null)
                return $"<span style='font-size: 25px;'>{pokemon1.NombrePokemon} es más fuerte</span>";
      

            // En caso de empate en tipos, se mide por orden de peso y altura

            if (pokemon1.Peso > pokemon2.Peso)
                return $"<span style='font-size: 25px;'>{pokemon1.NombrePokemon} gana por peso</span>";


            if (pokemon1.Peso < pokemon2.Peso)
                return $"<span style='font-size: 25px;'>{pokemon2.NombrePokemon} gana por peso</span>";
            

            if (pokemon1.Altura > pokemon2.Altura)
                return $"<span style='font-size: 25px;'>{pokemon1.NombrePokemon} gana por altura</span>";
           

            if (pokemon1.Altura < pokemon2.Altura)
                return $"<span style='font-size: 25px;'>{pokemon2.NombrePokemon} gana por altura</span>";

            // Si todo falla, es un empate
            return $"<span style='font-size: 25px; background-color: #FDEDEC;'> Empate</span>";
        }
    }
}
