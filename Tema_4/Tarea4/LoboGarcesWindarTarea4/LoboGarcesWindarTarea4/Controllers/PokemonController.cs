using LoboGarcesWindarTarea4.DataBase.Modelo;
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
            var pokemons = await _pokemonRepository.GetAllPokemon(null, null, null);
            var tipos = await _pokemonRepository.GetTipos();

            var viewModel = new ListaPokemonViewModel
            {
                Pokemons = pokemons,
               Tipos = tipos
            };

            return View(viewModel);
        }

        [Route("/Pokemon/GetById/{id?}")]

        public async Task<IActionResult> GetById(int numero_Pokedex)
        {
            var pokemons = await _pokemonRepository.GetPokemonByID(numero_Pokedex);

            return View(pokemons);
        }

        [Route("/Pokemon/GetDetalles/{id?}")]

        public async Task<IActionResult> GetDetalles(int numero_Pokedex)
        {
            var evolucion = await _pokemonRepository.GetDetalleEvoluciones(numero_Pokedex);

            return View(evolucion);
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

        [HttpPost]
        [Route("/Pokemon/FiltrarPokemon")]
        public async Task<IActionResult> FiltrarPokemon(double? peso, double? altura, int? tipo)
        {
            var pokemonesFiltrados = await _pokemonRepository.GetAllPokemon(peso, altura, tipo);
            var tipos = await _pokemonRepository.GetTipos();

            var viewModel = new ListaPokemonViewModel
            {
                Pokemons = pokemonesFiltrados,
                Tipos = tipos
            };

            return PartialView("ListaDePokemon", viewModel);
        }

    }
}


