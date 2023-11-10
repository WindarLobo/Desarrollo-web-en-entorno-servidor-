using Amazon_Montecastelo.Database.Models;
namespace LoboGarcesWindarTarea3
{
    public static class GlobalInfo
    {
        public static Usuario UsuarioLogeado { get; set; }


        public static bool IsLogged { get { return UsuarioLogeado != null; } }


        public static string LoginView = "/Views/Login/Logueate.cshtml";
    }
}
