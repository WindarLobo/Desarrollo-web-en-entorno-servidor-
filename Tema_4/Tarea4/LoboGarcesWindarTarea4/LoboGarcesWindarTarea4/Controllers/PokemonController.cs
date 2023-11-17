using LoboGarcesWindarTarea4.DataBase.Repository;
using LoboGarcesWindarTarea4.Models;
using Microsoft.AspNetCore.Mvc;

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
            var pokemons = await _pokemonRepository.GetAllPokemon(null, null);
            var tipos = await _pokemonRepository.GetTipos();

            var viewModel = new ListaPokemonViewModel
            {
                Pokemons = pokemons,
                //Tipos = tipos
            };

            return View(viewModel);
        }

        [Route("/Profesor/GetById/{id?}")]

        public async Task<IActionResult> GetById(int numero_Pokedex)
        {
            var pokemons = await _pokemonRepository.GetPokemonByID(numero_Pokedex);

            return View(pokemons);
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

            return View(movimientos);
        }

        [HttpGet]

        [Route("/Pokemon/FiltrarPokemon")]
        public async Task<IActionResult> FiltrarPokemon(double? peso, double? altura)
        {
            var pokemonesFiltrados = await _pokemonRepository.GetAllPokemon(peso, altura);

            return PartialView("ListaDePokemon", pokemonesFiltrados);
        }

    }
}


