
namespace LoboGarcesWindarTarea3.Models
{
    // Class MiCurriculumViewModel, se utiliza para  organizar y estructurar datos que se mostrarán en la interfaz de usuario. 
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

    // Class ExperienciaViewModel define un modelo de vista para representar la información relacionada con la experiencia laboral.
    public class ExperienciaViewModel
    {
        public string Titulo { get; set; }
        public List<string> Descripciones { get; set; }
        public DateTime Inicio { get; set; }
        public DateTime? Fin { get; set; }

    }

    //  Class FormacionViewModel define un modelo de vista para representar la información relacionada con la formación educativa. 
    public class FormacionViewModel
    {
        public string Titulo { get; set; }
        public string NombreInstituto { get; set; }
        public DateTime Inicio { get; set; }
        public DateTime? Fin { get; set; }

    }

    // Class ConocimientoViewModel define un modelo de vista para representar un conocimiento. 
    public class ConocimientoViewModel
    {
        public string Nombre { get; set; }

    }
}