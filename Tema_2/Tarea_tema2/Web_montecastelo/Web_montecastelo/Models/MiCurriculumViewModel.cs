namespace Web_montecastelo.Models
{
    public class MiCurriculumViewModel
    {
        public string? RequestId { get; set; }

        public bool ShowRequestId => !string.IsNullOrEmpty(RequestId);

        public string idioma { get; set; }

        public string interes { get; set; }
       

        public List<MiCurriculumViewModel> Idiomas { get; set; }
        public List<MiCurriculumViewModel> Intereses { get; set; }
        public string UrlImagen { get; set; }



    }
}