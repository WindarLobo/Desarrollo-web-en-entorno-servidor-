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

        [HttpPost]
        [Route("/Pokemon/AgregarAlEquipoAleatorio/")]
        public async Task<IActionResult> AgregarAlEquipoAleatorio()
        {
            EquipoReposiotrio.MiEquipoTodo();

            return RedirectToAction("ListaEquipo", new { type = "aleatorio" });
        }


        //[Route("/Pokemon/SimularCombate")]
        //public IActionResult SimularCombate()
        //{
        //    // Generar dos equipos aleatorios
        //    List<PokemonFull> equipoUsuario = GenerarEquipoAleatorioCombate(); 
        //    List<PokemonFull> equipoEnemigo = GenerarEquipoAleatorioCombate(); 

        //    // Realizar la simulación del combate
        //    string resultadoCombate = SimularBatalla(equipoUsuario, equipoEnemigo);
        //    var viewModel = new SimularCombateViewModel
        //    {
        //        EquipoUsuario = equipoUsuario,
        //        EquipoEnemigo = equipoEnemigo,
        //        ResultadoCombate = resultadoCombate
        //    };

        //    // Puedes hacer algo con el resultado, como mostrarlo en la vista
        //    ViewBag.ResultadoCombate = resultadoCombate;

        //    return View("SimularCombate", viewModel);
        //}

        //[HttpPost]
        //[Route("/Pokemon/SimularBatalla/equipoUsuario/equipoEnemigo")]
        //public string SimularBatalla(List<PokemonFull> equipoUsuario, List<PokemonFull> equipoEnemigo)
        //{
        //    double sumUsuario = equipoUsuario.Sum(pokemon => pokemon.Peso + pokemon.Altura); // Puedes ajustar esto según tus propias reglas
        //    double sumEnemigo = equipoEnemigo.Sum(pokemon => pokemon.Peso + pokemon.Altura);
        //    var tipoEnemigo = ObtenerTipoPredominante(equipoEnemigo);
        //    var tipoUsuario = ObtenerTipoPredominante(equipoUsuario);


        //    // Ejemplo simple: el equipo con más Pokémon gana
        //    if (sumUsuario > sumEnemigo)
        //    {
        //        return "¡Has ganado la batalla!";
        //    }
        //    else if (sumEnemigo < sumEnemigo)
        //    {
        //        return "¡Has perdido la batalla!";
        //    }
        //    else
        //    {

        //        return "¡La batalla ha terminado en empate!";
        //    }
        //}



    }

    }








