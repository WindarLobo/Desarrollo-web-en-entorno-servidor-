using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using Web_montecastelo.Models;
using System;
using System.Diagnostics.Metrics;

namespace Web_montecastelo.Controllers
{
    public class MiCurriculumController : Controller
    {
        private readonly ILogger<MiCurriculumController> _logger;

        public MiCurriculumController(ILogger<MiCurriculumController> logger)
        {
            _logger = logger;
        }

        public IActionResult MiCurriculum()// Esto devuelve el nombre de la vista ,ASP.NET Core buscará una vista con el mismo nombre ("MiCurriculum.cshtml") por convención.
        {

            var imagenRuta = "~/img/Windar.jpg";
            var urlImagen = Url.Content(imagenRuta);

            var viewModel = new MiCurriculumViewModel
            {
                Idiomas = ObtenerIdiomas(),
                Intereses = ObtenerInteres(),
                Experiencias = ObtenerExperiencia(),
                UrlImagen = urlImagen
            };

            return View(viewModel);
        }

        private List<string> ObtenerIdiomas()
        {
            return new List<string> { "Español-nativo", "Gallego-medio", "Ingles-medio" };
        }

        private List<string> ObtenerInteres()
        {
            return new List<string> { "Natacion", "Actividad al aire libre", "Correr", "Cine" };
        }

        private List<ExperienciaViewModel> ObtenerExperiencia()
        {


            return new List<ExperienciaViewModel>
            {
               new ExperienciaViewModel 
               {
                       Titulo = "Represetante de ventas ",
                       Descripciones =  new List<string> {"Representante de ventas"},
                       Inicio = new DateTime(2020,11,5),
                       Fin= new DateTime(2022,7,15)
               },

                new ExperienciaViewModel {
                    Titulo = "Encargada de tienda ",
                    Descripciones= new List<string> {"Control de cobros, pagos,Reporte de resultados." },
                    Inicio = new DateTime(2019,11,25),
                    Fin=new DateTime(2020,10,1)},

               new ExperienciaViewModel {
                   Titulo = "Atención al cliente",
                   Descripciones= new List<string> {"Atención al cliente,Recepción y atención al cliente,Control de cobros." },
                   Inicio = new DateTime(2016,7,30),
                   Fin=new DateTime(2017,4,15)
               },


            };

        }

          



        

        public IActionResult Index()
        {
            return View();
        }



    }
}

