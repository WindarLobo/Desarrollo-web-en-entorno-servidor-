using LoboGarcesWindarTarea4.DataBase.Modelo;
using System.Text;

namespace LoboGarcesWindarTarea4.DataBase.Repository
{
    public class CombateRepository
    {

        public static  string RealizarCombate(Equipo equipo1, Equipo equipo2)
        {

            var resultadoCombate = new StringBuilder();

            int cantidadPokemons = Math.Min(equipo1.Pokemons.Count, equipo2.Pokemons.Count);

            for (int i = 0; i < cantidadPokemons; i++)
            {
                var pokemon1 = equipo1.Pokemons[i];
                var pokemon2 = equipo2.Pokemons[i];

                resultadoCombate.AppendLine($"Combate {i + 1}: {pokemon1.NombrePokemon} VS {pokemon2.NombrePokemon}");

                var ganador = DeterminarGanadorCombate(pokemon1, pokemon2);

                resultadoCombate.AppendLine($"Ganador: {ganador}");
                resultadoCombate.AppendLine();
            }

            return resultadoCombate.ToString();
        }

        private static string DeterminarGanadorCombate(Pokemon pokemon1, Pokemon pokemon2)
        {
            // Lógica de combate: Regla general - el tipo más fuerte gana
            var tipoGanador = Tipo.CompararTipos(pokemon1.Tipos, pokemon2.Tipos);

            if (tipoGanador != null)
                return $"{pokemon1.NombrePokemon} {tipoGanador} es más fuerte";

            // En caso de empate en tipos, se mide por orden de peso y altura
            if (pokemon1.Peso > pokemon2.Peso)
                return $"{pokemon1.NombrePokemon} gana por peso";

            if (pokemon1.Peso < pokemon2.Peso)
                return $"{pokemon2.NombrePokemon} gana por peso";

            if (pokemon1.Altura > pokemon2.Altura)
                return $"{pokemon1.NombrePokemon} gana por altura";

            if (pokemon1.Altura < pokemon2.Altura)
                return $"{pokemon2.NombrePokemon} gana por altura";

            // Si todo falla, es un empate
            return "Empate";
        }
    }
}
