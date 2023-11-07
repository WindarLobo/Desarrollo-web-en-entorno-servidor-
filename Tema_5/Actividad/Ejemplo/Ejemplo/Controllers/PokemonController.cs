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
 

        [Route("/Pokemon/Info/{id}")]
        public IActionResult Info(int id)
        {
            var pokemon = _pokemonRepository.GetpokemonByID(id);

            if (pokemon == null)
                return NotFound();
            else
                return View(pokemon );
        }


        [Route("/Pokemon/GetPokemons/{peso}/{altura}")]
        public IActionResult GetPokemons (double peso, double altura)
        {
            var pokemos = _pokemonRepository.GetPokemonPesoAltura(peso, altura);
            return View( "Index",pokemos);
        }


        [Route("/Pokemon/agregar")]
        public IActionResult Agregar()
        {
            return View(new Pokemon());
        }

        [HttpPost]
        [Route("/Pokemon/create")]
        public IActionResult Create()
        {
         
            var Id = int.Parse(HttpContext.Request.Form["numero_pokedex"]);
            var nombre = HttpContext.Request.Form["Nombre"];
            var peso = double.Parse(HttpContext.Request.Form["peso"].ToString().Replace(".", ","));
            var altura = double.Parse(HttpContext.Request.Form["altura"].ToString().Replace(".", ","));
           



            var pokemons = _pokemonRepository.GetpokemonByID(Id);

            if (pokemons == null)
            {
                _pokemonRepository.Save(new Pokemon
                {
                    numero_pokedex = Id,
                    Nombre = nombre,
                    peso = peso,
                    altura = altura,

                }); ;
            }
            else
            {
                pokemons.Nombre = nombre;
                pokemons.peso = peso;
                pokemons.altura = altura;

                _pokemonRepository.Update();
            }

            var pokemon = _pokemonRepository.GetAllPokemon();

            return View("Index", pokemon);
        }
        [Route("/Pokemon/delete/{Id}")]
        public IActionResult Delete(int id)
        {
            _pokemonRepository.Delete(id);

            var pokemons = _pokemonRepository.GetAllPokemon();

            return View("Index", pokemons);
        }

        [Route("/Pokemon/edit/{Id}")]
        public IActionResult Edit(int Id)
        {
            var producto = _pokemonRepository.GetpokemonByID(Id);

            return View("Agregar", producto);
        }


    }
}
