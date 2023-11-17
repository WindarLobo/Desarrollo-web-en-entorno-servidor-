using LoboGarcesWindarTarea4.DataBase.Repository;
using Microsoft.AspNetCore.Mvc;
using LoboGarcesWindarTarea4.DataBase.Modelo;
using LoboGarcesWindarTarea4.DataBase.Dbo;

namespace LoboGarcesWindarTarea4.Controllers
{

  
   
    public class PokemonController : Controller
    {
        private readonly IPokemonRepository _pokemonRepository;
        public PokemonController(IPokemonRepository pokemonRepository)
        {
            _pokemonRepository = pokemonRepository;
        }
        [Route("/Pokemon")]
        [Route("/Pokemon/ListaDePokemon")]
        public async Task<IActionResult> ListaDePokemon()
        {
            var pokemons = await _pokemonRepository.GetAllPokemon();
            return View(pokemons);
        }
    
        [Route("/Profesor/GetById/{id?}")]

        public async Task<IActionResult> GetById(int numero_Pokedex)
        {
            var pokemons = await _pokemonRepository.GetPokemonByID(numero_Pokedex);
            return View("GetById", pokemons);
        }

    
        [Route("Pokemon/Evolucion")]
        public async Task<IActionResult> Evolucion(int numero_Pokedex)
        {
            var evoluciones = await _pokemonRepository.GetEvolucion(numero_Pokedex);

  
            return View(evoluciones);
        }

        [Route("/Pokemon/Movimiento")]
        public async Task<IActionResult> Movimiento(int numero_Pokedex)
        {
            var movimientos = await _pokemonRepository.GetMovimientos(numero_Pokedex);


            return View( movimientos);
        }
      
        [Route("/Pokemon/FiltrarPokemones")]
        public async Task<IActionResult> FiltrarPokemones(string TipoPokemon)
        {
            var pokemonesFiltrados = await _pokemonRepository.FilterPokemonTipo(TipoPokemon);

            return View("FiltrarPokemones",pokemonesFiltrados);

        }


    }
}


