using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using Web_montecastelo.Models;
using System;
using System.Diagnostics.Metrics;

namespace Web_montecastelo.Controllers
{
    //MiCurriculum hereda de Controller 
    public class MiCurriculumController : Controller
    {
        //Variable privada del tipo ILogger<MiCurriculumController>

        private readonly ILogger<MiCurriculumController> _logger;


        // Constructor del controlador que recibe una instancia del tipo ILogger<MiCurriculumController>

        public MiCurriculumController(ILogger<MiCurriculumController> logger)
        {
            _logger = logger;
        }

        // Metodo de accion Index(), prepara los datos necesarios para mostrar en la vista "MiCurriculum" y luego devuelve la vista junto con el modelo de vista correspondiente.
        public IActionResult Index()
        {
            var imagenRuta = "~/img/Windar.jpg";

            var urlImagen = Url.Content(imagenRuta);

            var viewModel = new MiCurriculumViewModel
            {
                Idiomas = ObtenerIdiomas(),

                Intereses = ObtenerIntereses(),

                Experiencias = ObtenerExperiencia(),

                Formacion = ObtenerFormacion(),

                Conocimientos = ObtenerConocimiento(),

                UrlImagenCurriculum = urlImagen
            };

            return View("MiCurriculum", viewModel);
        }

        // Metodo ObtenerIdiomas(), que devuelve una lista de idioma.
        private List<string> ObtenerIdiomas()
        {
            return new List<string> { "Español-nativo", "Gallego-medio", "Ingles-medio" };
        }

        //Metodo ObtenerIntereses(), que devuelve una lista de instereses.
        private List<string> ObtenerIntereses()
        {
            return new List<string> { "Natacion", "Actividad al aire libre", "Correr", "Cine" };
        }

        //Metodo ObtenerExperiencia(),esta función crea y devuelve una lista de experiencias laborales con información específica sobre cada experiencia.
        private List<ExperienciaViewModel> ObtenerExperiencia()
        {
            return new List<ExperienciaViewModel>
            {
               new ExperienciaViewModel
               {
                       Titulo = "BritishAmericanTobacco ",

                       Descripciones =  new List<string> {"Representante de ventas"},

                       Inicio = new DateTime(2020,11,5),

                       Fin= null
               },

                new ExperienciaViewModel {

                    Titulo = "El Cortes Ingles (CH Carolina Herrera)",

                    Descripciones= new List<string> {"Control de cobros.\n Stock.\nReporte de resultados." },

                    Inicio = new DateTime(2019,11,25),

                    Fin=new DateTime(2020,10,1)},

               new ExperienciaViewModel {
                   Titulo = "Laboratorio Clínico (La Medalla Milagrosa)",

                   Descripciones= new List<string> {"Atención al cliente.\nControl de pagos. \nControl de cobros." },

                   Inicio = new DateTime(2016,7,30),

                   Fin=new DateTime(2017,4,15)
               },


            };

        }

        //Metodo ObtenerFormacion(),crea y devuelve una lista de formaciones educativas.
        private List<FormacionViewModel> ObtenerFormacion()
        {

            return new List<FormacionViewModel>
            {
               new FormacionViewModel
               {
                       Titulo = "Ciclo superior desarrollo de aplicaciones web. ",

                       NombreInstituto =  "Centro de Formación Profesional Daniel Castelao.",

                       Inicio = new DateTime(2022,11,5),

                       Fin=null
               },

                new FormacionViewModel
               {
                       Titulo = "Ingeniera en Gas Natural ",

                       NombreInstituto =  "Universidad Rafael María Baralt",

                       Inicio = new DateTime(2010,11,5),

                       Fin= new DateTime(2015,12,18)
               },
            };
        }

        //Metodo ObtenerConocimiento(), crea y devuelve una lista los conocimientos. 
        private List<ConocimientoViewModel> ObtenerConocimiento()
        {
            return new List<ConocimientoViewModel>
            {
                 new ConocimientoViewModel
                {
                      Nombre = " Word ",
                },

                 new ConocimientoViewModel
                 {
                     Nombre = "Mail ",
                 },

                 new ConocimientoViewModel
                 {
                     Nombre = "Excell ",
                 },

                 new ConocimientoViewModel
                 {
                     Nombre = "SQL Server  ",
                 },

                  new ConocimientoViewModel
                 {
                      Nombre = "Javascript ",
                 },

            };
        }


       

    }
}

