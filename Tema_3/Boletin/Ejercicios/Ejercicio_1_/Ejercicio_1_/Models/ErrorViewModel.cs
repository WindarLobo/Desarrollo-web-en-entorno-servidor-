namespace Ejercicio_1_.Models;

public class ErrorViewModel
{
    public string? RequestId { get; set; }
    public string Nombre { get; set; }
    public string Apellido { get; set; }
    public int Edad { get; set; }

    public string UrlImagen { get; set; }
    public bool ShowRequestId => !string.IsNullOrEmpty(RequestId);

    public List<string> NombresPaises { get; set; }


    public ErrorViewModel()
    {
        NombresPaises = new List<string>
        {
            "Estados Unidos",
            "Canad�",
            "Reino Unido",
            "Francia",
            "Alemania",
            "Colombia",
            "Venezuela",
            "Espa�a",
        };
    }



}