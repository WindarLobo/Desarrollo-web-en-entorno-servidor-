using Microsoft.AspNetCore.Mvc;
using practica1.DataBase;
using practica1.DataBase.Models;
using practica1.DataBase.Repository;
using practica1.Models;

namespace practica1.Controllers
{
    public class PokemonController : Controller
    {
        private readonly PokemonlRepository _pokemonRepositorio;
        public PokemonController(Conexion context)
        {

            _pokemonRepositorio = new PokemonlRepository(context);

        }
        [Route("/")]
        [Route("/Pokemon")]
        [Route("/Pokemon/ObtenerPokemon")]
        public async Task<IActionResult> ObtenerPokemon()
        {
            var pokemons = await _pokemonRepositorio.GetAllPokemon(null, null);

            var viewModel = new PokemonViewModel
            {
                Pokemons = pokemons,


            };
            return View(viewModel);
        }

        [Route("/Pokemon/Detalle/{id}")]
        public async Task<IActionResult> Detalle(int id)
        {
            var detalle = await _pokemonRepositorio.GetPokemon(id);
            return View(detalle);
        }

        [HttpPost]

      

        [Route("/Pokemon/FiltrarPokemon")]

        public async Task<IActionResult> FiltrarPokemon(double? peso, double? altura)
        {
            var pokemonesFiltrados = await _pokemonRepositorio.GetAllPokemon(peso, altura);


            var viewModel = new PokemonViewModel
            {
                Pokemons = pokemonesFiltrados,

            };

            return PartialView("ObtenerPokemon", viewModel);
        }

        [Route("/Pokemon/agregar")]
        public IActionResult Agregar()
        {


            return View(new Pokemon());
        }


        [HttpPost]
        [Route("/Pokemon/Create")]
        public async Task<IActionResult> Create(Pokemon pokemon)
        {

            if (pokemon.numero_pokedex > 0)
            {

                await _pokemonRepositorio.UpdatePokemon(pokemon);


            }
            else
            {
                await _pokemonRepositorio.CreatePokemon(pokemon);
            }

            return RedirectToAction("ObtenerPokemon");


        }
        [Route("/Pokemon/Delete/{id?}")]
        public async Task<IActionResult> Delete(int? id)
        {
            await _pokemonRepositorio.DeleteProducto(id);

            return RedirectToAction("ObtenerPokemon");
        }



        [Route("/Pokemon/ListaEquipo/")]

        public async Task<IActionResult> ListaEquipo()
        {
            var equipo = new Equipo();


                var allPokemon = await _pokemonRepositorio.GetAllPokemon(null, null);

            
                equipo = EquipoRepository.MiEquipoTodo();


            var viewModel = new PokemonViewModel
            {
                Equipo = equipo,

                Count = equipo.Pokemons.Count,

                PesoPromedio = equipo.Pokemons.Sum(pokemon => pokemon.peso) / equipo.Pokemons.Count,

                AturaPromedio = equipo.Pokemons.Sum(Pokemon => Pokemon.altura) / equipo.Pokemons.Count,

               
            };

            return View(viewModel);
        }

        [HttpPost]

        [Route("/Pokemon/AgregarAlEquipo/{numero_Pokedex}")]

        public async Task<IActionResult> AgregarAlEquipo(int numero_Pokedex)
        {
           

            var pokemon = await _pokemonRepositorio.GetAllsPokemon(numero_Pokedex);

         

            var añadido = EquipoRepository.AddPokemon(pokemon);

            if (añadido != null)
            {
              



                return RedirectToAction("ObtenerPokemon", new { numero_Pokedex });
            }
            else
            {
                

                return RedirectToAction("ObtenerPokemon", new { numero_Pokedex });
            }
        }
    }
}
