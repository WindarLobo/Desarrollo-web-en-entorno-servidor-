using Boletin_Ejercicio_5.DataBase.Models;

namespace Boletin_Ejercicio_5
{
    public class GlobalInfo
    {

        public static Usuario UsuarioLogeado { get; set; }

        public static bool IsLogged { get { return UsuarioLogeado != null; } }

        public static Carrito MiCarrito { get; set; }
      
        public static string LoginView = "/Views/Usuario/Logueate.cshtml";
    }
}
