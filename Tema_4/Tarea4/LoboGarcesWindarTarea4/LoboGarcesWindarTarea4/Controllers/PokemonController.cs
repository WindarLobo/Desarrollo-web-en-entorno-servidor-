using LoboGarcesWindarTarea4.DataBase.Modelo;
using LoboGarcesWindarTarea4.DataBase.Repository;
using LoboGarcesWindarTarea4.Models;
using Microsoft.AspNetCore.Mvc;
using System.Text;

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


            var viewModel = new PokemonViewModel
            {
                Pokemons = pokemons,
                Tipos = tipos,

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

            var viewModel = new PokemonViewModel
            {
                Pokemons = pokemonesFiltrados,

                Tipos = tipos
            };

            return PartialView("ListaDePokemon", viewModel);
        }
        [HttpPost]

        [Route("/Pokemon/AgregarAlEquipo/{numero_Pokedex}")]
        public async Task<IActionResult> AgregarAlEquipo(int numero_Pokedex)
        {
            // Obtén el Pokémon completo usando el número de la Pokédex

            var pokemon = await _pokemonRepository.GetPokemonFull(numero_Pokedex);

            // Intenta añadir el Pokémon al equipo

            var añadido = EquipoReposiotrio.AddPokemon(pokemon);


            if (añadido.Añadido)
            {
                // Redirige de vuelta a la página de detalles del Pokémon
               
                TempData["MensajeExito"] = añadido.Mensaje;

                return RedirectToAction("ListaDePokemon", new { numero_Pokedex });
            }
            else
            {
                // Informa al usuario que ya ha alcanzado el límite de Pokémon en su equipo

                TempData["MensajeError"] = añadido.Mensaje;


                return RedirectToAction("ListaDePokemon", new { numero_Pokedex });
            }
        }

        [Route("/Pokemon/ListaEquipo/")]
        public async Task<IActionResult> ListaEquipo(string type)
        {
            var equipo = new Equipo();

            if (type == "aleatorio")
            {

                var allPokemon = await _pokemonRepository.GetAllPokemon(null, null, null);

                equipo = EquipoReposiotrio.GetRandomEquipo(allPokemon.ToList());

            }

            else
            {
                equipo = EquipoReposiotrio.MiEquipoTodo();

            }

            var tipoPredominante = equipo.Pokemons

                     .SelectMany(pokemon => pokemon.Tipos)

                     .GroupBy(tipo => tipo.TipoNombre)

                     .OrderByDescending(grupo => grupo.Count())

                     .Select(grupo => grupo.Key)

                     .FirstOrDefault();

            var viewModel = new PokemonViewModel
            {
                Equipo = equipo,

                Count = equipo.Pokemons.Count,

                PesoPromedio = equipo.Pokemons.Sum(pokemon => pokemon.Peso) / equipo.Pokemons.Count,

                AturaPromedio = equipo.Pokemons.Sum(Pokemon => Pokemon.Altura) / equipo.Pokemons.Count,

                TipoPromedio = tipoPredominante,

            };

          

            return View(viewModel);
        }

        [Route("/Pokemon/LucharConMiEquipo/")]
        public async Task<IActionResult> LucharConMiEquipo()
        {
            var allPokemon = await _pokemonRepository.GetAllPokemon(null, null, null);

            // Obtener tu equipo actual
            var miEquipo = EquipoReposiotrio.MiEquipoTodo();

            // Generar un equipo aleatorio
            var equipoAleatorio = EquipoReposiotrio.GetRandomMiEquipo(allPokemon.ToList());
            // Verificar si el equipo aleatorio ya tiene el tamaño deseado
            while (miEquipo.Pokemons.Count < miEquipo.Pokemons.Count)
            {
                // Agregar más Pokémon aleatorios al equipo aleatorio
                var pokemonAleatorio = EquipoReposiotrio.GetRandomEquipo(allPokemon.ToList());

                equipoAleatorio.Pokemons.Add(pokemonAleatorio.Pokemons.First());
            }

            // Realizar la batalla entre los dos equipos
            var resultadoBatalla = Combate.RealizarCombate(miEquipo, equipoAleatorio);

            // Crear y retornar un modelo para la vista
            var combate = new SimularCombateViewModel
            {
                Equipo1 = equipoAleatorio,

                Equipo2 = miEquipo,

                ResultadoBatalla = resultadoBatalla
            };

            return View(combate);
        }

        [Route("/Pokemon/CombateConEquipoAleatorio/")]
        public async Task<IActionResult> CombateConEquipoAleatorio()
        {
            var allPokemon = await _pokemonRepository.GetAllPokemon(null, null, null);

            // Lógica para obtener los equipos y el resultado de la batalla
            var equipoRandom1 = EquipoReposiotrio.GetRandomEquipo(allPokemon.ToList());

            var equipoRandom2 = EquipoReposiotrio.GetRandomEquipo(allPokemon.ToList());

            var resultadoBatalla = Combate.RealizarCombate(equipoRandom1, equipoRandom2);

            // Crear y retornar un modelo para la vista
            var combate = new SimularCombateViewModel
            {
                Equipo1 = equipoRandom1,

                Equipo2 = equipoRandom2,

                ResultadoBatalla = resultadoBatalla

            };

            return View(combate);
        }

 
    }



}










