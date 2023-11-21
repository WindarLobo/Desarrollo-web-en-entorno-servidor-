using LoboGarcesWindarTarea4.DataBase.Modelo;
using LoboGarcesWindarTarea4.DataBase.Repository;
using LoboGarcesWindarTarea4.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using NuGet.Packaging;
using System.Collections.Generic;

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

            var viewModel = new ListaPokemonViewModel
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
        public IActionResult ListaEquipo()
        {
            List<PokemonFull> listaPokemon;

            if (EquipoReposiotrio.MiEquipo != null && EquipoReposiotrio.MiEquipo.Pokemons.Any())
            {
                // Si el usuario tiene un equipo, muestra la lista de su equipo
                listaPokemon = EquipoReposiotrio.MiEquipo.Pokemons;
            }
            else
            {
                listaPokemon = Equipo.PokemonAleatorio;
                int totalCantidad = listaPokemon.Count();
                double sumaDePesos = listaPokemon.Sum(pokemon => pokemon.Peso);
                double pesoPromedio = sumaDePesos / totalCantidad;
                double sumaAltura = listaPokemon.Sum(pokemon => pokemon.Altura);
                double mediaDeAltura = sumaAltura / totalCantidad;


                var tipoPredominante = listaPokemon

                     .SelectMany(pokemon => pokemon.Tipos)
                    .GroupBy(tipo => tipo)
                    .OrderByDescending(grupo => grupo.Count())
                    .Select(grupo => grupo.Key)
                    .FirstOrDefault();

                ViewBag.TipoPredominante = tipoPredominante;

                ViewBag.TotalCantidad = totalCantidad;
                ViewBag.PesoPromedio = pesoPromedio;
                ViewBag.MediaDeAltura = mediaDeAltura;
            }

            return View(listaPokemon);
        }



        [HttpPost]
        [Route("/Pokemon/AgregarAlEquipoAleatorio/")]
        public async Task<IActionResult> AgregarAlEquipoAleatorio()
        {

            const int _maxPokemon = 6;
            Equipo.PokemonAleatorio.Clear();

            // Obtén el Pokémon completo usando el número de la Pokédex
            var pokemons = await _pokemonRepository.GetAllPokemon(null, null, null);

            Random random = new Random();


            for (int i = 0; i < _maxPokemon; i++)
            {

                int indiceAleatorio = random.Next(0, pokemons.Count());
                var pokemonAleatorio = pokemons.ElementAt(indiceAleatorio);
                var pokemonFull = new PokemonFull
                {

                    PokemonId = pokemonAleatorio.PokemonId,
                    NombrePokemon = pokemonAleatorio.NombrePokemon,
                    Peso = pokemonAleatorio.Peso,
                    Altura = pokemonAleatorio.Altura,
                    Tipos = pokemonAleatorio.Tipos,
                    Estadisticas = null,
                    Ataques = null,
                    FlujoEvolucion = null,
                    FlujoInvolucion = null
                };


                Equipo.PokemonAleatorio.Add(pokemonFull);

            }


            return RedirectToAction("ListaDePokemon");
        }



    }

}








