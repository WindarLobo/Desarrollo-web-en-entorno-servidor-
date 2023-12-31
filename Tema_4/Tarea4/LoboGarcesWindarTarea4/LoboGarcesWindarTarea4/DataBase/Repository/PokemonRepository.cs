﻿using Dapper;
using LoboGarcesWindarTarea4.DataBase.Modelo;
using Microsoft.CodeAnalysis;

namespace LoboGarcesWindarTarea4.DataBase.Repository;

//PokemonRepository que implementa la interfaz IPokemonRepository
public class PokemonRepository : IPokemonRepository

{
    private readonly Conexion _conexion;

    //Constructor PokemonRepository que toma un parámetro de tipo Conexion
    public PokemonRepository(Conexion conexion)
    {
        _conexion = conexion;
    }

    //GetAllPokemon recupera Pokémon de la base de datos con opciones de filtrado y devuelve una lista de objetos Pokemon, cada uno con sus respectivos tipos.
    public async Task<IEnumerable<Pokemon>> GetAllPokemon(double? peso, double? altura, int? tipoIdPokemon)
    {
        var query = @"SELECT 
                       Pokemon.numero_pokedex   AS PokemonId,
                       Pokemon.nombre           AS NombrePokemon,
                       Pokemon.peso             AS Peso,
                       Pokemon.altura           AS Altura,
	                   Tipo.id_tipo             AS TipoId,
                       Tipo.nombre              AS TipoNombre
                    FROM Pokemon
	                   INNER JOIN pokemon_tipo
                            ON Pokemon.numero_pokedex = pokemon_tipo.numero_pokedex
	                   INNER JOIN Tipo 
                            ON pokemon_tipo.id_tipo = Tipo.id_tipo
                       WHERE 1=1";

        if (peso != null)
        {
            query += " AND Pokemon.peso=@peso";
        }
        if (altura != null)
        {
            query += " AND Pokemon.altura=@altura";
        }
        if (tipoIdPokemon != null)
        {
            query += " AND  pokemon_tipo.id_tipo=@tipoIdPokemon";
        }

        using (var connection = _conexion.ObtenerConexion())
        {
            var values = await connection.QueryAsync<Pokemon, Tipo, Pokemon>
                (query, (pokemon, tipo) =>
                {
                    pokemon.Tipos = pokemon.Tipos ?? new List<Tipo>();
                    pokemon.Tipos.Add(tipo);
                    return pokemon;
                },
                new { peso, altura, tipoIdPokemon },
                splitOn: "TipoId");

            return values.GroupBy(p => p.PokemonId).Select(g =>
            {
                var group = g.First();
                group.Tipos = g.Select(p => p.Tipos.Single()).ToList();
                return group;
            }).ToList();
        }

    }

    //GetPokemonBase recupera la información base de un Pokémon específico de la base de datos y devuelve un objeto Pokemon.
    public async Task<Pokemon> GetPokemonBase(int numero_pokedex)
    {
        var query = @"SELECT 
                       Pokemon.numero_pokedex   AS PokemonId,
                       Pokemon.nombre           AS NombrePokemon,
                       Pokemon.peso             AS Peso,
                       Pokemon.altura           AS Altura,
	                   Tipo.id_tipo             AS TipoId,
                       Tipo.nombre              AS TipoNombre
                    FROM Pokemon
	                   INNER JOIN pokemon_tipo
                            ON Pokemon.numero_pokedex = pokemon_tipo.numero_pokedex
	                   INNER JOIN Tipo 
                            ON pokemon_tipo.id_tipo = Tipo.id_tipo 
                    WHERE Pokemon.numero_pokedex = @numero_Pokedex";

        using var connection = _conexion.ObtenerConexion();

        var values = await connection.QueryAsync<Pokemon, Tipo, Pokemon>
           (query, (pokemon, tipo) =>
           {
               pokemon.Tipos = pokemon.Tipos ?? new List<Tipo>();
               pokemon.Tipos.Add(tipo);
               return pokemon;
           },
           new { numero_pokedex },
           splitOn: "TipoId");

        return values.GroupBy(p => p.PokemonId).Select(g =>
        {
            var group = g.First();
            group.Tipos = g.Select(p => p.Tipos.Single()).ToList();
            return group;
        }).First();
    }

    //GetPokemonFull proporciona una vista "completa" de un Pokémon específico, información detallada sobre sus tipos, ataques, evoluciones y otras estadísticas. 
    public async Task<PokemonFull> GetPokemonFull(int numero_pokedex)
    {
        var query = @"SELECT 
                       Pokemon.numero_pokedex        AS PokemonId,
                       Pokemon.nombre                AS NombrePokemon,
                       Pokemon.peso                  AS Peso,
                       Pokemon.altura                AS Altura,
	                   Tipo.id_tipo                  AS TipoId,
                       Tipo.nombre                   AS TipoNombre
                    FROM Pokemon
	                   INNER JOIN pokemon_tipo
                            ON Pokemon.numero_pokedex = pokemon_tipo.numero_pokedex
	                   INNER JOIN Tipo 
                            ON pokemon_tipo.id_tipo = Tipo.id_tipo 
                    WHERE Pokemon.numero_pokedex = @numero_Pokedex";

        using var connection = _conexion.ObtenerConexion();

        var values = await connection.QueryAsync<PokemonFull, Tipo, PokemonFull>
           (query, (pokemon, tipo) =>
           {
               pokemon.Tipos = pokemon.Tipos ?? new List<Tipo>();
               pokemon.Tipos.Add(tipo);
               return pokemon;
           },
           new { numero_pokedex },
           splitOn: "TipoId");

        var pokemon = values.GroupBy(p => p.PokemonId).Select(g =>
        {
            var group = g.First();
            group.Tipos = g.Select(p => p.Tipos.Single()).ToList();
            return group;
        }).First();

        pokemon.Ataques = await GetMovimientos(numero_pokedex);

        pokemon.Evoluciones = await GetEvolucion(numero_pokedex);

        pokemon.FlujoEvolucion = await GetFlujoEvolucion(numero_pokedex);

        pokemon.FlujoInvolucion = await GetFlujoInvolucion(numero_pokedex);

        pokemon.Estadisticas = await GetEstadistica(numero_pokedex);




        return pokemon;
    }

    //GetTipos obteniene la lista de tipos de Pokémon
    public async Task<IEnumerable<Tipo>> GetTipos()
    {
        var query = @"select id_tipo AS TipoId, nombre AS TipoNombre from tipo";
        using var connection = _conexion.ObtenerConexion();
        return await connection.QueryAsync<Tipo>(query);
    }

    //GetEvolucion obtiene  información detallada sobre las evoluciones de un Pokémon específico.
    private async Task<IEnumerable<Evolucion>> GetEvolucion(int numero_Pokedex)
    {
        var query = @"SELECT
		                pokemon.numero_pokedex		   AS PokemonId,
		                nombre						   AS PokemonNombre,
		                forma_evolucion.tipo_evolucion AS TipoEvolucion,
		                Nivel						   AS Nivel,
		                nombre_piedra				   AS Piedra
                     FROM pokemon
	                    LEFT JOIN pokemon_forma_evolucion 
                              ON pokemon.numero_pokedex = pokemon_forma_evolucion.numero_pokedex
	                    LEFT JOIN forma_evolucion 
                              ON forma_evolucion.id_forma_evolucion = pokemon_forma_evolucion.id_forma_evolucion
	                    LEFT JOIN tipo_evolucion 
                              ON tipo_evolucion.id_tipo_evolucion = forma_evolucion.tipo_evolucion
	                    LEFT JOIN nivel_evolucion ON forma_evolucion.id_forma_evolucion = nivel_evolucion.id_forma_evolucion
	                    LEFT JOIN Piedra ON Piedra.id_forma_evolucion = forma_evolucion.id_forma_evolucion
	                    LEFT JOIN tipo_piedra ON Piedra.id_tipo_piedra = tipo_piedra.id_tipo_piedra 
                    WHERE pokemon.numero_pokedex = @numero_Pokedex";

        using var connection = _conexion.ObtenerConexion();

        var evoluciones = await connection.QueryAsync<Evolucion>(query, new { numero_Pokedex });

        return evoluciones;
    }
    
    //GetFlujoEvolucion obtiene flujo de evolucion del Pokémon dado y crea objetos DetalleEvoluciones para cada uno de ellos.
    private async Task<IEnumerable<DetalleEvoluciones>> GetFlujoEvolucion(int numero_Pokedex)
    {
        List<DetalleEvoluciones> detalles = new();

        var query = @"select pokemon_evolucion.numero_pokedex, pokemon_evolucion.nombre
                        from pokemon
                         inner join evoluciona_de 
                            on pokemon.numero_pokedex =   evoluciona_de.pokemon_origen
                         inner join pokemon as pokemon_evolucion  
                            on pokemon_evolucion.numero_pokedex = evoluciona_de.pokemon_evolucionado
                        where pokemon.numero_pokedex = @numero_Pokedex";

        using var connection = _conexion.ObtenerConexion();

        int pokemonId;

        while ((pokemonId = await connection.QuerySingleOrDefaultAsync<int>(query, new { numero_Pokedex })) != 0)
        {
            detalles.Add(new DetalleEvoluciones
            {
                Pokemon = await GetPokemonBase(pokemonId)
            });

            numero_Pokedex = pokemonId;
        }

        return detalles.ToList();
    }

    //GetFlujoInvolucion obtiene flujo de involucion del Pokémon.

    private async Task<IEnumerable<DetalleEvoluciones>> GetFlujoInvolucion(int numero_Pokedex)
    {
        List<DetalleEvoluciones> detalles = new();

        var query = @"select pokemon_evolucion.numero_pokedex,pokemon_evolucion.nombre
                        from pokemon
                     inner join evoluciona_de  
                        on pokemon.numero_pokedex =   evoluciona_de.pokemon_evolucionado
                     inner join pokemon as pokemon_evolucion
                        on pokemon_evolucion.numero_pokedex = evoluciona_de.pokemon_origen
                    where pokemon.numero_pokedex= @numero_Pokedex";

        using var connection = _conexion.ObtenerConexion();

        int pokemonId;

        while ((pokemonId = await connection.QuerySingleOrDefaultAsync<int>(query, new { numero_Pokedex })) != 0)
        {
            detalles.Add(new DetalleEvoluciones
            {
                Pokemon = await GetPokemonBase(pokemonId)
            });

            numero_Pokedex = pokemonId;
        }

        return detalles.ToList();
    }

    //GetMovimientos obtiene los movimientos del Pokémon.
    private async Task<IEnumerable<Ataque>> GetMovimientos(int numero_Pokedex)
    {
        var query = @"SELECT
                        tipo.id_tipo           AS ID_Tipo,
	                    tipo.nombre		      AS TipoPokemon,
                        tipo.id_tipo_ataque   AS ID_Tipo_Ataque,
	                    tipo			      AS TipoAtaque,
	                    movimiento.nombre     AS NombreAtaque,
	                    Descripcion		      AS Descripcion,
	                    Potencia		      AS Potencia,
	                    precision_mov	      AS Precision,
	                    pp,
	                    prioridad
                    FROM tipo
                        INNER JOIN movimiento 
                            ON movimiento.id_tipo = tipo.id_tipo
                        INNER JOIN tipo_ataque
                            ON tipo.id_tipo_ataque = tipo_ataque.id_tipo_ataque
                        INNER JOIN pokemon_tipo 
                           ON tipo.id_tipo = pokemon_tipo.id_tipo
                    WHERE pokemon_tipo.numero_pokedex = @numero_Pokedex
                         ORDER BY
	                         TipoPokemon";

        using (var connection = _conexion.ObtenerConexion())
        {
            var movimiento = await connection.QueryAsync<Ataque>(query, new { numero_Pokedex });


            return movimiento.ToList();
        }

    }

    //GetEstadistica obtengo las Estadisticas_base 
    private async Task<IEnumerable<Estadistica>> GetEstadistica(int numero_Pokedex)
    {

        var query = @"Select
                        Estadisticas_base.ps           AS  Ps,
                       Estadisticas_base.ataque        AS Ataque,
                       Estadisticas_base.defensa       AS Defensa,
                       Estadisticas_base.especial      AS Especial,
                       Estadisticas_base.velocidad     AS Velocidad 
                    FROM Pokemon
                      INNER JOIN  Estadisticas_base  
                            ON Pokemon.numero_pokedex = Estadisticas_base.numero_pokedex 
                    where pokemon.numero_pokedex= @numero_Pokedex";

        using (var connection = _conexion.ObtenerConexion())
        {
            var estadistica = await connection.QueryAsync<Estadistica>(query, new { numero_Pokedex });


            return estadistica.ToList();
        }
    }


}









