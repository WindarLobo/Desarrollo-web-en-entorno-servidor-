using LoboGarcesWindarTarea4.DataBase.Modelo;
using Dapper;
using System.Threading.Tasks;
using System.Data;
using NuGet.Protocol.Plugins;
using System.Data.Common;
using LoboGarcesWindarTarea4.Models;
using LoboGarcesWindarTarea4.DataBase.Dbo;

namespace LoboGarcesWindarTarea4.DataBase.Repository;

public class PokemonRepository : IPokemonRepository

{
    private readonly Conexion _conexion;

    public PokemonRepository(Conexion conexion)
    {
        _conexion = conexion;
    }

    public async Task<IEnumerable<PokemonDbo>> GetAllPokemon(double? peso,double? altura, string? tipo)
    {
        var query = @"Select 
                   Pokemon.numero_pokedex AS PokemonId,
                   Pokemon.nombre AS NombrePokemon,
                   Tipo.id_tipo AS TipoID,
                   Tipo.nombre	 AS TipoPokemon,
                   Pokemon.peso AS Peso,
                   Pokemon.altura AS Altura
                   from Pokemon
                   INNER JOIN pokemon_tipo ON Pokemon.numero_pokedex = pokemon_tipo.numero_pokedex
	               INNER JOIN Tipo ON pokemon_tipo.id_tipo = Tipo.id_tipo WHERE 1=1";

        if(peso != null)
        {
             query += "AND  peso=@peso";
        }
        if (altura != null)
        {
            query += "AND  altura=@altura";
        }
        if (tipo != null)
        {
            query += "AND  tipo=@tipo";
        }
        using (var connection = _conexion.ObtenerConexion())
        {
            var pokemon = await connection.QueryAsync<PokemonDbo>(query, new { peso,altura,tipo});
            return pokemon.ToList();
        }

    }
    public async Task<Pokemon> GetPokemonByID(int? numero_pokedex)
    {
        var query = "Select * from Pokemon WHERE numero_pokedex = @numero_Pokedex";
        using (var connection = _conexion.ObtenerConexion())
        {
            var pokemon = await connection.QuerySingleOrDefaultAsync<Pokemon>(query, new { numero_pokedex });
            return pokemon;
        }
    }
    public async Task<IEnumerable<EvolucionDbo>> GetEvolucion(int numero_Pokedex)
    {
        var query = @"SELECT
		pokemon.numero_pokedex		   AS PokemonId,
		nombre						   AS PokemonNombre,
		forma_evolucion.tipo_evolucion AS TipoEvolucion,
		Nivel						   AS Nivel,
		nombre_piedra				   AS Piedra
        FROM pokemon
	    LEFT JOIN pokemon_forma_evolucion ON pokemon.numero_pokedex = pokemon_forma_evolucion.numero_pokedex
	    LEFT JOIN forma_evolucion ON forma_evolucion.id_forma_evolucion = pokemon_forma_evolucion.id_forma_evolucion
	    LEFT JOIN tipo_evolucion ON tipo_evolucion.id_tipo_evolucion = forma_evolucion.tipo_evolucion
	    LEFT JOIN nivel_evolucion ON forma_evolucion.id_forma_evolucion = nivel_evolucion.id_forma_evolucion
	    LEFT JOIN Piedra ON Piedra.id_forma_evolucion = forma_evolucion.id_forma_evolucion
	    LEFT JOIN tipo_piedra ON Piedra.id_tipo_piedra = tipo_piedra.id_tipo_piedra WHERE
        pokemon.numero_pokedex = @numero_Pokedex";


        using (var connection = _conexion.ObtenerConexion())
        {
            var evoluciones = await connection.QueryAsync<EvolucionDbo>(query, new { numero_Pokedex });

            return evoluciones.ToList();
        }
    }
    public async Task<IEnumerable<MoviminetoDbo>> GetMovimientos(int numero_Pokedex)
    {
        var query = @"SELECT
        tipo.id_tipo  AS ID_Tipo,
	    tipo.nombre		  AS TipoPokemon,
        tipo.id_tipo_ataque AS ID_Tipo_Ataque,
	    tipo			      AS TipoAtaque,
	    movimiento.nombre    AS NombreAtaque,
	    Descripcion		  AS Descripcion,
	    Potencia		      AS Potencia,
	    precision_mov	      AS Precision,
	    pp,
	    prioridad
        FROM tipo
        INNER JOIN movimiento ON movimiento.id_tipo = tipo.id_tipo
        INNER JOIN tipo_ataque ON tipo.id_tipo_ataque = tipo_ataque.id_tipo_ataque
        INNER JOIN pokemon_tipo ON tipo.id_tipo = pokemon_tipo.id_tipo
        WHERE pokemon_tipo.numero_pokedex = @numero_Pokedex
        ORDER BY
	    TipoPokemon";

        using (var connection = _conexion.ObtenerConexion())
        {
            var movimiento = await connection.QueryAsync<MoviminetoDbo>(query, new { numero_Pokedex });


            return movimiento.ToList();
        }
    }

  




}


