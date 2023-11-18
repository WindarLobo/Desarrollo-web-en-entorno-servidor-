using LoboGarcesWindarTarea4.DataBase.Modelo;

namespace LoboGarcesWindarTarea4.DataBase.Repository
{
    public interface IPokemonRepository
    {
        Task<IEnumerable<Pokemon>> GetAllPokemon(double? peso, double? altura, int? tipoIdPokemon);
        Task<PokemonFull> GetPokemonFull(int numero_Pokedex);
        Task<Pokemon> GetPokemonBase(int numero_Pokedex);
        Task<IEnumerable<Tipo>> GetTipos();
    }
}
