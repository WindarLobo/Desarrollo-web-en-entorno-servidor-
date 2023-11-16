using LoboGarcesWindarTarea4.DataBase.Modelo;
using Dapper;
using System.Threading.Tasks;
using System.Data;
using NuGet.Protocol.Plugins;
using System.Data.Common;
using LoboGarcesWindarTarea4.Models;

namespace LoboGarcesWindarTarea4.DataBase.Repository;

public class PokemonRepository : IPokemonRepository

{
    private readonly Conexion _conexion;

    public PokemonRepository(Conexion conexion)
    {
        _conexion = conexion;
    }



    public async Task<IEnumerable<Pokemon>> GetAllPokemon()
    {
        var query = "Select * from Pokemon";
        using (var connection = _conexion.ObtenerConexion())
        {
            var pokemon = await connection.QueryAsync<Pokemon>(query);
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
    public async Task<IEnumerable<Evolucion>> GetEvolucion(int numero_Pokedex)
    {

        var query =
            @"SELECT
            P1.numero_pokedex ,
            P1.nombre ,
            P2.numero_pokedex,
            P2.nombre ,
            NE.nivel ,TE.id_tipo_evolucion
            FROM
            dbo.pokemon AS P1
            LEFT JOIN dbo.evoluciona_de AS E ON P1.numero_pokedex = E.pokemon_origen
            LEFT JOIN dbo.pokemon AS P2 ON E.pokemon_evolucionado = P2.numero_pokedex
            LEFT JOIN dbo.forma_evolucion AS FE ON P2.numero_pokedex = FE.id_forma_evolucion
           LEFT JOIN dbo.nivel_evolucion AS NE ON FE.id_forma_evolucion = NE.id_forma_evolucion
           LEFT JOIN dbo.tipo_evolucion AS TE ON FE.tipo_evolucion = TE.id_tipo_evolucion WHERE
           P1.numero_pokedex = @numero_Pokedex OR P2.numero_pokedex =@numero_Pokedex";


        using (var connection = _conexion.ObtenerConexion())
        {
            var evoluciones = await connection.QueryAsync<Evolucion>(query, new { numero_Pokedex });

            return evoluciones.ToList();
        }
    }
    public async Task<IEnumerable<Movimiento>> GetMovimientos()
    {
        var query = @"
          SELECT
		tipo.nombre		  AS TipoPokemon,
		tipo			  AS TipoAtaque,
		movimiento.nombre AS NombreAtaque,
		Descripcion		  AS Descripcion,
		Potencia		  AS Potencia,
		precision_mov	  AS Precision,
		pp,
		prioridad
         FROM
		tipo
	     INNER JOIN
		movimiento
		ON movimiento.id_tipo = tipo.id_tipo
	     INNER JOIN
		tipo_ataque
	   ON tipo.id_tipo_ataque = tipo_ataque.id_tipo_ataque
        ORDER BY
		TipoPokemon";
      
        using (var connection = _conexion.ObtenerConexion())
        {
            var movimiento = await connection.QueryAsync<Movimiento>(query);


            return movimiento.ToList();
        }
    }
    public async Task<IEnumerable<Pokemon>> FilterPokemon(string tipo, double? peso, double? altura)
    {


        var query = @"SELECT *
       FROM pokemon p
     JOIN tipo t ON pt.id_tipo = t.id_tipo
      WHERE p.peso = @peso
      AND p.altura = @altura and t.nombre = @tipo";


        using (var connection = _conexion.ObtenerConexion())
        {
            var pokemones = await connection.QueryAsync<Pokemon>(query, new { tipo, peso, altura });
            return pokemones.ToList();
        }
    }

    


}


