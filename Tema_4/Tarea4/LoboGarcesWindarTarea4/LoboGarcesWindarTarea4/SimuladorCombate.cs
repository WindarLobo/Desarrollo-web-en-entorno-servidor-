using LoboGarcesWindarTarea4.DataBase.Modelo;


namespace LoboGarcesWindarTarea4.Models;

public class SimuladorCombate
{
    //RealizarCombate() se encarga de la simulación de combates entre Pokémon de dos equipos. 
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

        var pokemon1Debil = false;

        var pokemon2Debil = false;

        foreach (var tipo1 in pokemon1.Tipos)
        {
            foreach (var tipo2 in pokemon2.Tipos)
            {
                if (EsTipoDebil(tipo1, tipo2))
                {
                    pokemon1Debil = true;
                   
                    break;
                }
            }
        }

        foreach (var tipo2 in pokemon2.Tipos)
        {
            foreach (var tipo1 in pokemon1.Tipos)
            {
                if (EsTipoDebil(tipo2, tipo1))
                {
                    pokemon2Debil = true;
                    break;
                }
            }
        }

        if (pokemon1Debil && !pokemon2Debil)
        {
            return new PokemonGanador
            {
                Pokemon = pokemon2,
                Motivo = "Es mas fuerte por tipo. "            
            };
        }
        else if (pokemon2Debil && !pokemon1Debil)
        {
            return new PokemonGanador
            {
                Pokemon = pokemon1,
                Motivo = "Es mas fuerte por tipo.",             
            };
        }
        else
        {
            // En caso de empate en tipos, se suma   peso y altura para determinar la masa

            if (pokemon1.Peso + pokemon1.Altura > pokemon2.Peso + pokemon2.Altura)

                return new PokemonGanador { Pokemon = pokemon1, Motivo = "Por  volume de masa"};

            else
            {
                return new PokemonGanador { Pokemon = pokemon2, Motivo = "Por volume de masa"};
            }

        }
       
    }


    // Lógica para determinar si tipo1 es debil contra tipo2

    // Implementa según tus reglas específicas
    private static bool EsTipoDebil(Tipo tipo1, Tipo tipo2)

    {  //switch c# un switch nuevo 

        return tipo1.TipoNombre switch
        {
            "Acero" => tipo2.TipoNombre == "Lucha" || tipo2.TipoNombre == "Fuego" || tipo2.TipoNombre == "Tierra",

            "Fuego" => tipo2.TipoNombre == "Tierra" || tipo2.TipoNombre == "Agua" || tipo2.TipoNombre == "Roca",

            "Agua" => tipo2.TipoNombre == "Planta" || tipo2.TipoNombre == "Eléctrico",

            "Planta" => tipo2.TipoNombre == "Voldador" || tipo2.TipoNombre == "Bicho" || tipo2.TipoNombre == "Veneno" || tipo2.TipoNombre == "Hielo" || tipo2.TipoNombre == "Fuego",

            "Eléctrico" => tipo2.TipoNombre == "Tierra",

            "Psíquico" => tipo2.TipoNombre == "Bicho" || tipo2.TipoNombre == "Fantasma" || tipo2.TipoNombre == "Siniestro",

            "Hielo" => tipo2.TipoNombre == "Lucha" || tipo2.TipoNombre == "Acero" || tipo2.TipoNombre == "Roca" || tipo2.TipoNombre == "Fuego",

            "Volador" => tipo2.TipoNombre == "Roca" || tipo2.TipoNombre == "Hielo" || tipo2.TipoNombre == "Eléctrico",

            "Tierra" => tipo2.TipoNombre == "Agua" || tipo2.TipoNombre == "Planta" || tipo2.TipoNombre == "Hielo",

            "Lucha" => tipo2.TipoNombre == "Psíquico" || tipo2.TipoNombre == "Volador" || tipo2.TipoNombre == "Hielo",

            "Dragón" => tipo2.TipoNombre == "Dragón"  || tipo2.TipoNombre == "Hada" || tipo2.TipoNombre == "Hielo",

            "Veneno" => tipo2.TipoNombre == "Psíquico" || tipo2.TipoNombre == "Tierra",

            "Roca" => tipo2.TipoNombre == "Lucha" || tipo2.TipoNombre == "Tierra" || tipo2.TipoNombre == "Acero" || tipo2.TipoNombre == "Agua" || tipo2.TipoNombre == "Planta",

            "Bicho" => tipo2.TipoNombre == "Volador" || tipo2.TipoNombre == "Fuego" || tipo2.TipoNombre == "Roca",

            "Fantasma" => tipo2.TipoNombre == "Siniestro" || tipo2.TipoNombre == "Fantasma",

            "Siniestro" => tipo2.TipoNombre == "Lucha" || tipo2.TipoNombre == "Hada" || tipo2.TipoNombre == "Bicho",

            "Hada" => tipo2.TipoNombre == "Acero" || tipo2.TipoNombre == "Veneno",

            _ => false,
        };
    }
}
