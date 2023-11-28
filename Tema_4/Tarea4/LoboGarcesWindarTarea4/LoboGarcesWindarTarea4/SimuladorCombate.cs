using LoboGarcesWindarTarea4.DataBase.Modelo;


namespace LoboGarcesWindarTarea4.Models
{
    public class SimuladorCombate
    {
        //RealizarCombate() se encarga de la simulación de combates entre Pokémon de dos equipos y genera un mensaje HTML. 
        public static Batalla RealizarCombate(Equipo equipo1, Equipo equipo2)
        {
            var batalla = new Batalla()
            {
                Equipo1 = equipo1,
                Equipo2 = equipo2,
                Combates = new List<Combate>()
            };

            for (int i = 0; i < equipo1.Pokemons.Count; i++)
            {
                var pokemon1 = equipo1.Pokemons[i];
                var pokemon2 = equipo2.Pokemons[i];

                var combate = new Combate
                {
                    Pokemon1 = pokemon1,
                    Pokemon2 = pokemon2,
                    Ganador = DeterminarGanadorCombate(pokemon1, pokemon2)
                };

                batalla.Combates.Add(combate);
            }

            return batalla;
        }

        private static PokemonGanador DeterminarGanadorCombate(Pokemon pokemon1, Pokemon pokemon2)
        {
            // Lógica de comparación de tipos
            // Implementa según tus reglas específicas

            var pokemon1Fuerte = false;
            var pokemon2Fuerte = false;

            foreach (var tipo1 in pokemon1.Tipos)
            {
                foreach (var tipo2 in pokemon2.Tipos)
                {
                    if (EsTipoFuerte(tipo1, tipo2))
                    {
                        pokemon1Fuerte = true;
                        break;
                    }
                }
            }

            foreach (var tipo2 in pokemon2.Tipos)
            {
                foreach (var tipo1 in pokemon1.Tipos)
                {
                    if (EsTipoFuerte(tipo2, tipo1))
                    {
                        pokemon2Fuerte = true;
                        break;
                    }
                }
            }

            if(pokemon1Fuerte && !pokemon2Fuerte)
            {
                return new PokemonGanador { Pokemon = pokemon1, 
                                            Motivo = "Es mas fuerte por tipo."};
            }
            else if (pokemon2Fuerte && !pokemon1Fuerte)
            {
                return new PokemonGanador { Pokemon = pokemon2, 
                                            Motivo = "Es mas fuerte por tipo." };
            }
            else
            {
                // En caso de empate en tipos, se mide por orden de peso y altura
                if (pokemon1.Peso > pokemon2.Peso)
                    return new PokemonGanador { Pokemon = pokemon1, Motivo = "Por peso"};

                //if (pokemon1.Peso < pokemon2.Peso)
                //    return pokemon2;

                //if (pokemon1.Altura > pokemon2.Altura)
                //    return pokemon1;

                //if (pokemon1.Altura < pokemon2.Altura)
                //    return pokemon2;
            }

            return new PokemonGanador { Pokemon = pokemon1, Motivo = "Por peso" };
        }


        // Lógica para determinar si tipo1 es fuerte contra tipo2
        // Implementa según tus reglas específicas
        private static bool EsTipoFuerte(Tipo tipo1, Tipo tipo2)
        {  //switch c# un switch nuevo 
            return tipo1.TipoNombre switch
            {
                "Fuego" => tipo2.TipoNombre == "Planta" || tipo2.TipoNombre == "Acero",

                "Agua" => tipo2.TipoNombre == "Fuego" || tipo2.TipoNombre == "Roca" || tipo2.TipoNombre == "Tierra",

                "Planta" => tipo2.TipoNombre == "Agua" || tipo2.TipoNombre == "Roca" || tipo2.TipoNombre == "Tierra",

                "Eléctrico" => tipo2.TipoNombre == "Agua" || tipo2.TipoNombre == "Volador",

                "Psíquico" => tipo2.TipoNombre == "Agua" || tipo2.TipoNombre == "Volador",

                "Hielo" => tipo2.TipoNombre == "Planta" || tipo2.TipoNombre == "Tierra" || tipo2.TipoNombre == "Volador" || tipo2.TipoNombre == "Dragón",

                "Volador" => tipo2.TipoNombre == "Planta" || tipo2.TipoNombre == "Lucha" || tipo2.TipoNombre == "Bicho",

                "Tierra" => tipo2.TipoNombre == "Fuego" || tipo2.TipoNombre == "Eléctrico" || tipo2.TipoNombre == "Acero" || tipo2.TipoNombre == "Roca" || tipo2.TipoNombre == "Veneno",

                "Lucha" => tipo2.TipoNombre == "Normal",

                "Dragón" => tipo2.TipoNombre == "Dragón",

                "Veneno" => tipo2.TipoNombre == "Planta" || tipo2.TipoNombre == "Hada",

                "Roca" => tipo2.TipoNombre == "Fuego" || tipo2.TipoNombre == "Hielo" || tipo2.TipoNombre == "Volador" || tipo2.TipoNombre == "Bicho",

                "Bicho" => tipo2.TipoNombre == "Psíquico" || tipo2.TipoNombre == "Siniestro" || tipo2.TipoNombre == "Planta",

                "Fantasma" => tipo2.TipoNombre == "Psíquico" || tipo2.TipoNombre == "Fantasma",

                "Siniestro" => tipo2.TipoNombre == "Psíquico" || tipo2.TipoNombre == "Fantasma",

                "Hada" => tipo2.TipoNombre == "Lucha" || tipo2.TipoNombre == "Dragón" || tipo2.TipoNombre == "Siniestro",

                "Acero" => tipo2.TipoNombre == "Hielo" || tipo2.TipoNombre == "Roca" || tipo2.TipoNombre == "Hada",

                _ => false,
            };
        }
    }
}
