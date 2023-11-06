using Ejemplo.Database;
using Ejemplo.Database.Models;
using Ejemplo.Database.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace Ejemplo.Controllers
{
    public class PokemonController : Controller
    {
        private readonly PokemonRepository _pokemonRepository;

        public PokemonController(PokemonContext context)
        {
            _pokemonRepository = new PokemonRepository(context);
        }

        [Route("/")]
        [Route("/Pokemon")]
        [Route("/Pokemon/Index")]
        public IActionResult Index()
        {
            var pokemons = _pokemonRepository.GetAllPokemon().ToList();
            return View(pokemons);
        }
 

        [Route("/Pokemon/{id?}")]
        public IActionResult GetPokemons(int id)
        {
            var pokemon = _pokemonRepository.GetpokemonByID(id);

            if (pokemon == null)
                return NotFound();
            else
                return View("Index", new List<Pokemon> { pokemon });
        }
        [Route("/Pokemon/{peso}/{altura}")]
        public IActionResult Info(double peso, double altura)
        {
            var pokemos = _pokemonRepository.GetPokemonPesoAltura(peso, altura);
            return View("Index", pokemos);
        }
    }
}
