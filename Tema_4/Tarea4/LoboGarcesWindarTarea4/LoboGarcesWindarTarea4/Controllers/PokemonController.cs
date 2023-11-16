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

            if (evoluciones == null || !evoluciones.Any())
            {
                return NotFound($"No se encontraron evoluciones para el Pokémon con el número de Pokédex {numero_Pokedex}.");
            }
          

            return View(evoluciones);
        }

        [Route("/Pokemon/Movimiento")]
        public async Task<IActionResult> Movimiento()
        {
            var movimientos = await _pokemonRepository.GetMovimientos();


            return View( movimientos);
        }
        [Route("/Pokemon/FiltrarPokemones/tipo/peso/altura")]
        public async Task<IActionResult> FiltrarPokemones(string tipo, double? peso, double? altura)
        {
            var pokemonesFiltrados = await _pokemonRepository.FilterPokemon(tipo, peso, altura);
            return View("ListaDePokemon", pokemonesFiltrados);
        }


    }
}


