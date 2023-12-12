using Dapper;
using practica1.DataBase.Models;

namespace practica1.DataBase.Repository
{
    public interface IPokemonRepository
    {
        Task<Pokemon> GetAllsPokemon(int numero_Pokedex);
        Task<IEnumerable<Pokemon>> GetAllPokemon(double? peso, double? altura);
        Task<Pokemon> GetPokemon(int numero_pokedex);
        Task CreatePokemon(Pokemon pokemon);
        Task UpdatePokemon(Pokemon pokemon);

    }

    public class PokemonlRepository : IPokemonRepository
    {

        private readonly Conexion _conexion;

        public PokemonlRepository(Conexion conexion)
        {
            _conexion = conexion;
        }
        public async Task<Pokemon>GetAllsPokemon(int numero_Pokedex )
        {
            var queryPokemon = "Select * from Pokemon where numero_Pokedex = @numero_Pokedex";

            using var connection = _conexion.ObtenerConexion();


            return await connection.QuerySingleAsync<Pokemon>(queryPokemon, new { numero_Pokedex });


        }

        public async Task<IEnumerable<Pokemon>> GetAllPokemon(double? peso, double? altura)
        {
            var queryPokemon = "Select * from Pokemon WHERE 1 = 1 ";

            using var connection = _conexion.ObtenerConexion();

            if (peso != null)
            {
                queryPokemon += " AND peso =@peso";
            }
            if (altura != null)
            {
                queryPokemon += " AND altura =@altura";
            }
           

            return await connection.QueryAsync<Pokemon>(queryPokemon,new { peso, altura });


        }
   
        public async Task<Pokemon> GetPokemon(int numero_pokedex)
        {
            var queryPokemon = @"SELECT * 
                         from Pokemon Where  numero_pokedex = @numero_pokedex ";

            using var connection = _conexion.ObtenerConexion();

            return await connection.QuerySingleAsync<Pokemon>(queryPokemon, new { numero_pokedex });


        }

        public async Task CreatePokemon(Pokemon pokemon)
        {

            var query = @"Insert into Pokemon (nombre,peso,altura) Values (@nombre,@peso,@altura);
            SELECT SCOPE_IDENTITY(); ";

            using var connection = _conexion.ObtenerConexion();
            await connection.ExecuteAsync(query, new { pokemon.nombre, pokemon.peso, pokemon.altura });

        }

        public async Task UpdatePokemon(Pokemon pokemon)
        {
            var query = @"UPDATE Pokemon
                SET 
                    nombre = @nombre,
                    peso = @peso,
                    altura = @altura
                WHERE numero_pokedex = @numero_pokedex";


            using var connection = _conexion.ObtenerConexion();

            await connection.ExecuteAsync(query, new { pokemon.numero_pokedex, pokemon.nombre, pokemon.peso, pokemon.altura });
        }


        public async Task DeleteProducto(int? numero_pokedex)
        {
            var query = @"Delete from Pokemon  WHERE numero_pokedex = @numero_pokedex ";
            using var connection = _conexion.ObtenerConexion();
            await connection.ExecuteAsync(query, new { numero_pokedex });
        }
    }

}
