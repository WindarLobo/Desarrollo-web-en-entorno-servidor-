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

        //Ruta de Acción

        [Route("/Pokemon")]

        [Route("/Pokemon/ListaDePokemon")]

        //ListaDePokemon obtiene todos los pokemons.
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

        //Ruta de Acción

        [Route("/Pokemon/Detalle/{id?}")]

        //Detalle se encarga de obtener y mostrar información detallada de un Pokémon específico en una vista.
        public async Task<IActionResult> Detalle(int numero_Pokedex)
        {
            var pokemons = await _pokemonRepository.GetPokemonFull(numero_Pokedex);

            return View(pokemons);
        }

        //Solicitudes HTTP POST.

        [HttpPost]

        //Ruta de acceso para esta acción.

        [Route("/Pokemon/FiltrarPokemon")]

        //FiltrarPokemon filtra un Pokémon según ciertos criterios (peso, altura, tipo) y devolver una vista parcial con la lista de Pokémon filtrados y la lista de tipos asociada.
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
       
        //Solicitudes HTTP POST.

        [HttpPost]

        //Ruta de acceso para esta acción.

        [Route("/Pokemon/AgregarAlEquipo/{numero_Pokedex}")]

        //AgregarAlEquipo maneja la logica  de agregar un Pokémon al equipo
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
                //TempData se utiliza para almacenar mensajes temporales que se mostrarán en la siguiente solicitud.

                //Informa al usuario que ya ha alcanzado el límite de Pokémon en su equipo

                TempData["MensajeError"] = añadido.Mensaje;


                return RedirectToAction("ListaDePokemon", new { numero_Pokedex });
            }
        }

        //Ruta de acceso para esta acción.

        [Route("/Pokemon/ListaEquipo/")]

        //ListaEquipo muestra  la lista del equipo de Pokémon, ya sea generando un equipo aleatorio o mostrando el equipo existente.
        public async Task<IActionResult> ListaEquipo(string type)
        {
            var equipo = new Equipo();

            if (type == "aleatorio")
            {

                var allPokemon = await _pokemonRepository.GetAllPokemon(null, null, null);

                equipo = EquipoReposiotrio.GetRandomMiEquipo(allPokemon.ToList());

            }

            else
            {
                equipo = EquipoReposiotrio.MiEquipoTodo();

            }

            //Cálculo del tipoPredominante

            var tipoPredominante = equipo.Pokemons

                     .SelectMany(pokemon => pokemon.Tipos)

                     .GroupBy(tipo => tipo.TipoNombre)

                     .OrderByDescending(grupo => grupo.Count())

                     .Select(grupo => grupo.Key)

                     .FirstOrDefault();


            //Creo un objeto PokemonViewModel que contiene la información del equipo, el recuento de Pokémon, el peso y altura promedio, y el tipo predominante.
            
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

        //Ruta de acceso para esta acción.

        [Route("/Pokemon/LucharConMiEquipo/")]

        //LucharConMiEquipo  maneja la lógica para simular una batalla entre mi equipo actual y un equipo aleatorio. 
        public async Task<IActionResult> LucharConMiEquipo()
        {
            var allPokemon = await _pokemonRepository.GetAllPokemon(null, null, null);

            // Obtener tu equipo actual
            var miEquipo = EquipoReposiotrio.MiEquipoTodo();

            // Generar un equipo aleatorio
            var equipoAleatorio = EquipoReposiotrio.GetRandomMiEquipo(allPokemon.ToList(), miEquipo.Pokemons.Count);

            // Verificar si el equipo aleatorio ya tiene el tamaño deseado
            while (miEquipo.Pokemons.Count < miEquipo.Pokemons.Count)
            {
                // Agregar más Pokémon aleatorios al equipo aleatorio
                var pokemonAleatorio = EquipoReposiotrio.GetRandomMiEquipo(allPokemon.ToList());

                equipoAleatorio.Pokemons.Add(pokemonAleatorio.Pokemons.First());
            }

            // Realizar la batalla entre los dos equipos

            var resultadoBatalla = Combate.RealizarCombate(miEquipo, equipoAleatorio);
            TempData["ResultadoBatalla"] = resultadoBatalla;
            // Crear y retornar un modelo para la vista

            var combate = new SimularCombateViewModel
            {
                Equipo1 = equipoAleatorio,

                Equipo2 = miEquipo,

                ResultadoBatalla = resultadoBatalla,

                 MostrarResultados = true
            };

            return View(combate);
        }

        //Ruta de acceso para esta acción.

        [Route("/Pokemon/CombateConEquipoAleatorio/")]

        //CombateConEquipoAleatorio maneja la logica para simular una batalla entre dos equipos aleatorios
        public async Task<IActionResult> CombateConEquipoAleatorio()
        {
            var allPokemon = await _pokemonRepository.GetAllPokemon(null, null, null);

            // Lógica para obtener los equipos y el resultado de la batalla
            var equipoRandom1 = EquipoReposiotrio.GetRandomMiEquipo(allPokemon.ToList());

            var equipoRandom2 = EquipoReposiotrio.GetRandomMiEquipo(allPokemon.ToList());

            var resultadoBatalla = Combate.RealizarCombate(equipoRandom1, equipoRandom2);

            // Almacenar el resultado en TempData

            TempData["ResultadoBatalla"] = resultadoBatalla;

            // Crear y retornar un modelo para la vista

            var combate = new SimularCombateViewModel
            {
                Equipo1 = equipoRandom1,

                Equipo2 = equipoRandom2,

                ResultadoBatalla = resultadoBatalla,

                MostrarResultados = true

            };

            return View(combate);
        }

        //Esta acción responde solo a solicitudes HTTP GET.
        [HttpGet]

        //Ruta de acceso para esta acción.

        [Route("/Pokemon/ResultadosCombate/")]

        //ResultadosCombate() maneja la lógica para mostrar los resultados de una batalla simulada entre equipos.
        public async Task<IActionResult> ResultadosCombate()
        {
            // Recuperar el resultado de la batalla de TempData

            var resultadoBatalla = TempData["ResultadoBatalla"] as string;

            var combate = new SimularCombateViewModel
            {
                ResultadoBatalla = resultadoBatalla,

                MostrarResultados = true
            };


            return View(combate);
        }

    }

}










