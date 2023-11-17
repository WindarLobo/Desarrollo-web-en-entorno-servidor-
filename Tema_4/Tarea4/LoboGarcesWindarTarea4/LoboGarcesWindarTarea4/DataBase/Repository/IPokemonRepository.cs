using LoboGarcesWindarTarea4.DataBase.Dbo;
using LoboGarcesWindarTarea4.DataBase.Modelo;
using LoboGarcesWindarTarea4.Models;

namespace LoboGarcesWindarTarea4.DataBase.Repository
{
    public interface IPokemonRepository
    {
        Task<IEnumerable<PokemonDbo>> GetAllPokemon();
        Task <Pokemon> GetPokemonByID(int? numero_Pokedex);

        Task<IEnumerable<EvolucionDbo>> GetEvolucion(int numero_Pokedex);
       
        Task<IEnumerable<MoviminetoDbo>> GetMovimientos(int numero_Pokedex);
        Task<IEnumerable<TipoDbo>> FilterPokemonTipo(string tipo);
       


    }
}
