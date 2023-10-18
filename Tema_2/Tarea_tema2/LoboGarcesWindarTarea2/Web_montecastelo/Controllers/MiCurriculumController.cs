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
        public IActionResult MiCurriculum()
        {

            var imagenRuta = "~/img/Windar.jpg";

            var urlImagen = Url.Content(imagenRuta);

            var viewModel = new MiCurriculumViewModel
            {
                Idiomas = ObtenerIdiomas(),

                Intereses = ObtenerInteres(),

                Experiencias = ObtenerExperiencia(),

                Formacion = ObtenerFormacion(),

                Conocimientos = ObtenerConocimiento(),

                UrlImagenCurriculum = urlImagen
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
                       Titulo = "BritishAmericanTobacco ",

                       Descripciones =  new List<string> {"Representante de ventas"},

                       Inicio = new DateTime(2020,11,5),

                       Fin= new DateTime(2023,7,15)
               },

                new ExperienciaViewModel {

                    Titulo = "El Cortes Ingles",

                    Descripciones= new List<string> {"Control de cobros.\n pagos.\nReporte de resultados." },

                    Inicio = new DateTime(2019,11,25),

                    Fin=new DateTime(2020,10,1)},

               new ExperienciaViewModel {
                   Titulo = "Laboratorio Clínico (La Medalla Milagrosa)",

                   Descripciones= new List<string> {"Atención al cliente.\nRecepción y atención al cliente. \nControl de cobros." },

                   Inicio = new DateTime(2016,7,30),

                   Fin=new DateTime(2017,4,15)
               },


            };

        }

        private List<FormacionViewModel> ObtenerFormacion()
        {

            return new List<FormacionViewModel>
            {
               new FormacionViewModel
               {
                       Titulo = "Ciclo superior desarrollo de aplicaciones web. ",

                       NombreInstituto =  "Centro de Formación Profesional Daniel Castelao.",

                       Inicio = new DateTime(2022,11,5),

                       Fin= new DateTime(2023,10,18)
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

        public IActionResult Index()
        {
            var imagenRuta2 = "~/img/justin-lim-tloFnD-7EpI-unsplash.jpg";

            var urlImagen2 = Url.Content(imagenRuta2);

            var viewModel2 = new MiCurriculumViewModel

            {

                UrlImagenIndex = urlImagen2
            };
            return View(viewModel2);
        }

    }
}

