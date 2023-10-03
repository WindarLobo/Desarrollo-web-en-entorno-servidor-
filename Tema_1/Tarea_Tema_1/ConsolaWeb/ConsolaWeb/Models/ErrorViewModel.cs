namespace ConsolaWeb.Models
{
    public class ErrorViewModel
    {
        public string? RequestId { get; set; }

        public bool ShowRequestId => !string.IsNullOrEmpty(RequestId);

        public string Palo { get; set; }
        public int Numero { get; set; }
        public string ImagenUrl { get; set; }

    }
}