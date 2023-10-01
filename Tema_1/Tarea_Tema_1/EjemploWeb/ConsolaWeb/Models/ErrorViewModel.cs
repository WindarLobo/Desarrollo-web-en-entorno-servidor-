namespace ConsolaWeb.Models
{
    public class ErrorViewModel
    {
        public string? RequestId { get; set; }

        public bool ShowRequestId => !string.IsNullOrEmpty(RequestId);
        public string Palo { get; set; }
        public string Tipo { get; set; }
        public string RutaImagen { get; set; }
    }
}