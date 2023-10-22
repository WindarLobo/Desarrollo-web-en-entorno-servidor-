using Activida1.Models;
using Microsoft.AspNetCore.Mvc;

namespace Activida1.Controllers
{
    public class PokemonController : Controller
    {
        private readonly ILogger<PokemonController> _logger;

        public PokemonController(ILogger<PokemonController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Agregar()
        {
            return View();

        }
        public IActionResult VerPokemon(int numero_Pokedex, string nombre, int peso, int altura)
        {
            Pokemon pokemon = new Pokemon(numero_Pokedex, nombre, peso, altura);




            return View(pokemon);

        }
    }
}
