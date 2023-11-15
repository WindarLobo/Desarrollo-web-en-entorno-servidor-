using LoboGarcesWindarTarea4.DataBase.Repository;
using Microsoft.AspNetCore.Mvc;
using LoboGarcesWindarTarea4.DataBase.Modelo;

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
        [HttpPost]
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
        public async Task<IActionResult> Movimiento(int numero_pokedex)
        {
            var movimientos = await _pokemonRepository.GetMovimientos(numero_pokedex);


            return View( movimientos);
        }
        [HttpPost]
        public async Task<IActionResult> FiltrarPokemones(string tipo, double? peso, double? altura)
        {
            var pokemonesFiltrados = await _pokemonRepository.FilterPokemon(tipo, peso, altura);
            return View("ListaDePokemon", pokemonesFiltrados);
        }

    }
}


