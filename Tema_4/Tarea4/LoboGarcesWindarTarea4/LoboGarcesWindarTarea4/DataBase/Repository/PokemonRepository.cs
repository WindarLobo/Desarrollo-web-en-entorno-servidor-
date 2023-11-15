using LoboGarcesWindarTarea4.DataBase.Modelo;
using Dapper;
using System.Threading.Tasks;
using System.Data;
using NuGet.Protocol.Plugins;
using System.Data.Common;

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

        var query = @"
      SELECT e.pokemon_evolucionado, e.pokemon_origen
     FROM evoluciona_de e
     JOIN pokemon p ON e.pokemon_evolucionado = p.numero_pokedex
     JOIN forma_evolucion ed ON ed.id_forma_evolucion = e.pokemon_evolucionado
     WHERE e.pokemon_origen = @numero_Pokedex";


        using (var connection = _conexion.ObtenerConexion())
        {
            var evoluciones = await connection.QueryAsync<Evolucion>(query, new { numero_Pokedex });

            return evoluciones.ToList();
        }
    }
    public async Task<IEnumerable<Movimiento>> GetMovimientos(int numero_Pokedex)
    {
        var query = @"
           SELECT m.*
            FROM movimiento m
			join tipo t On m.id_tipo=t.id_tipo
            JOIN pokemon_tipo  pmf ON t.id_tipo = pmf.id_tipo
            WHERE pmf.numero_pokedex = @numero_Pokedex";
        using (var connection = _conexion.ObtenerConexion())
        {
            var movimiento = await connection.QueryAsync<Movimiento>(query, new { numero_Pokedex });


            return movimiento.ToList();
        }
    }
    public async Task<IEnumerable<Pokemon>> FilterPokemon(string tipo, double? peso, double? altura)
    {
        

        var query = @"
        SELECT p.*
        FROM pokemon p
        LEFT JOIN pokemon_tipo pt ON p.numero_pokedex = pt.numero_pokedex
        WHERE 1 = 1";

        if (!string.IsNullOrEmpty(tipo))
        {
            query += " AND pt.tipo = @tipo";
           
        }

        if (peso.HasValue)
        {
            query += " AND p.peso = @peso";
          
        }

        if (altura.HasValue)
        {
            query += " AND p.altura = @altura";
           
        }

        using (var connection = _conexion.ObtenerConexion())
        {
            var pokemones = await connection.QueryAsync<Pokemon>(query, new { tipo, peso, altura });
            return pokemones.ToList();
        }
    }


}


