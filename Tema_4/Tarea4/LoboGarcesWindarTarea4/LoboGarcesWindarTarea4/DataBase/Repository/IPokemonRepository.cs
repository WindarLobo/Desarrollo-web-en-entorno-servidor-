﻿using LoboGarcesWindarTarea4.DataBase.Modelo;

namespace LoboGarcesWindarTarea4.DataBase.Repository
{
    public interface IPokemonRepository
    {
        Task<IEnumerable<Pokemon>> GetAllPokemon();
        Task <Pokemon> GetPokemonByID(int? numero_Pokedex);

        Task<IEnumerable<Evolucion>> GetEvolucion(int numero_Pokedex);
       
        Task<IEnumerable<Movimiento>> GetMovimientos(int numeroPokedex);
        Task<IEnumerable<Pokemon>> FilterPokemon(string tipo, double? peso, double? altura);


    }
}
