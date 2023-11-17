using LoboGarcesWindarTarea4.DataBase.Modelo;
using LoboGarcesWindarTarea4.Models;

namespace LoboGarcesWindarTarea4.DataBase.Repository
{
    public interface IPokemonRepository
    {
        Task<IEnumerable<Pokemon>> GetAllPokemon(double? peso, double? altura,int? tipoIdPokemon);
        Task <Pokemon> GetPokemonByID(int? numero_Pokedex);

        Task<IEnumerable<Evolucion>> GetEvolucion(int numero_Pokedex);
       
        Task<IEnumerable<Ataque>> GetMovimientos(int numero_Pokedex);

        Task<IEnumerable<Tipo>> GetTipos();

    }
}
