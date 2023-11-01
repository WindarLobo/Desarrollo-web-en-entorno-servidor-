using Actividad2.Database;
using Actividad2.Database.Models;
using Actividad2.Database.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace Actividad2.Controllers
{
    public class PokemonController : Controller
    {
        private readonly PokemonRepository _pokemonRepository;

        public PokemonController(PokemonContext context)
        {
            _pokemonRepository = new PokemonRepository(context);
        }

        [Route("/")]
        [Route("/pokemon")]
        [Route("/pokemon/index")]
        public IActionResult Index()
        {
            var pokemons = _pokemonRepository.GetAllPokemon();
            return View(pokemons);
        }

        [Route("/pokemon/{pokemonId}")]
        public IActionResult VerPokemon(int pokemonId)
        {
            var pokemon = _pokemonRepository.GetPokemonByID(pokemonId);
            return View(pokemon);
        }

        [Route("/pokemon/agregar")]
        public IActionResult Agregar()
        {
            return View(new Pokemon());
        }

        [HttpPost]
        [Route("/pokemon/create")]
        public IActionResult Create()
        {
            var pokemonId = int.Parse(HttpContext.Request.Form["PokemonId"]);
            var name = HttpContext.Request.Form["Name"];
            var peso = double.Parse(HttpContext.Request.Form["Peso"].ToString().Replace(".", ","));
            var altura = double.Parse(HttpContext.Request.Form["Altura"].ToString().Replace(".", ","));

            var pokemon = _pokemonRepository.GetPokemonByID(pokemonId);

            if(pokemon == null)
            {
                _pokemonRepository.Save(new Pokemon
                {
                    PokemonId = pokemonId,
                    Name = name,
                    peso = peso,
                    altura = altura
                });
            }
            else
            {
                pokemon.Name = name;
                pokemon.altura = altura;
                pokemon.peso = peso;
                _pokemonRepository.Update();
            }

            var pokemons = _pokemonRepository.GetAllPokemon();

            return View("Index", pokemons);
        }

        [Route("/pokemon/delete/{pokemonId}")]
        public IActionResult Delete(int pokemonId)
        {
            _pokemonRepository.Delete(pokemonId);

            var pokemons = _pokemonRepository.GetAllPokemon();

            return View("Index", pokemons);
        }

        [Route("/pokemon/edit/{pokemonId}")]
        public IActionResult Edit(int pokemonId)
        {
            var pokemon = _pokemonRepository.GetPokemonByID(pokemonId);

            return View("Agregar", pokemon);
        }
    }
}
