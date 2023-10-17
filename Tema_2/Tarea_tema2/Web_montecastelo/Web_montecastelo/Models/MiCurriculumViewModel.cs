using System.Collections.Generic;

namespace Web_montecastelo.Models
{
    public class MiCurriculumViewModel
    {



        public List<string> Idiomas { get; set; }
        public List<string> Intereses { get; set; }
        public string UrlImagen { get; set; }

        public List<ExperienciaViewModel> Experiencias{ get; set; }

    }

    public class ExperienciaViewModel
    {
        public string Titulo { get; set; }
        public List<string > Descripciones { get; set; }
        public DateTime Inicio { get; set; }
        public DateTime Fin { get; set; }

    }
}