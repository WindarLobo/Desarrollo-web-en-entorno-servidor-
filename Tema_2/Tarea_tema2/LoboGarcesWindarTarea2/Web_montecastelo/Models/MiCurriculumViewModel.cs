
namespace Web_montecastelo.Models
{
    public class MiCurriculumViewModel
    {
        public List<string> Idiomas { get; set; }
        public List<string> Intereses { get; set; }
        public string UrlImagenCurriculum { get; set; }
        public string UrlImagenIndex { get; set; }

        public List<ExperienciaViewModel> Experiencias { get; set; }
        public List<FormacionViewModel> Formacion { get; set; }
        public List<ConocimientoViewModel> Conocimientos { get; set; }
    }

    public class ExperienciaViewModel
    {
        public string Titulo { get; set; }
        public List<string> Descripciones { get; set; }
        public DateTime Inicio { get; set; }
        public DateTime Fin { get; set; }

    }
    public class FormacionViewModel
    {
        public string Titulo { get; set; }
        public string NombreInstituto { get; set; }
        public DateTime Inicio { get; set; }
        public DateTime Fin { get; set; }

    }
    public class ConocimientoViewModel
    {
        public string Nombre { get; set; }

    }
}