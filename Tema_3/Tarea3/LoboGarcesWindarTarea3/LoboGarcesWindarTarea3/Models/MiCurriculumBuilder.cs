namespace LoboGarcesWindarTarea3.Models
{
    public class MiCurriculumBuilder
    {
        // Metodo ObtenerIdiomas(), que devuelve una lista de idioma.
        public static  List<string> ObtenerIdiomas()
        {
            return new List<string> { "Español-nativo", "Gallego-medio", "Ingles-medio" };
        }

        //Metodo ObtenerIntereses(), que devuelve una lista de instereses.
        public static List<string> ObtenerIntereses()
        {
            return new List<string> { "Natacion", "Actividad al aire libre", "Correr", "Cine" };
        }

        //Metodo ObtenerExperiencia(),esta función crea y devuelve una lista de experiencias laborales con información específica sobre cada experiencia.
        public static  List<ExperienciaViewModel> ObtenerExperiencia()
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
        public static  List<FormacionViewModel> ObtenerFormacion()
        {

            return new List<FormacionViewModel>
            {
               new FormacionViewModel
               {
                       Titulo = "Ciclo superior desarrollo de aplicaciones web. ",

                       NombreInstituto =  "Centro de Formación Profesional Montecastelo.",

                       Inicio = new DateTime(2022,09,18),

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
        public static List<ConocimientoViewModel> ObtenerConocimiento()
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
