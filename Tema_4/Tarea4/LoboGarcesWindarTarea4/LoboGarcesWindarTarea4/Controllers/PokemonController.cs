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

        [Route("/Pokemon/Detalle/{id?}")]

        public async Task<IActionResult> Detalle(int numero_Pokedex)
        {
            var pokemons = await _pokemonRepository.GetPokemonFull(numero_Pokedex);

            return View(pokemons);
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


