using Amazon_Montecastelo.Database.Models;
namespace LoboGarcesWindarTarea3
{
    public static class GlobalInfo
    {
        public static Usuario UsuarioLogeado { get; set; }

        public static bool IsLogged { get { return UsuarioLogeado != null; } }

        public static Carrito MiCarrito { get; set; }
        public static Venta MiVenta { get; set; }

        public static string LoginView = "/Views/Login/Logueate.cshtml";


       
    }
}
