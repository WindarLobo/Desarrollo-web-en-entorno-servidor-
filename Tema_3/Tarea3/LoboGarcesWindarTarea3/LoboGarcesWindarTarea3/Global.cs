using LoboGarcesWindarTarea3.Database.Models;

namespace LoboGarcesWindarTarea3
{
    public static class Global
    {
        // Esta es una propiedad estática de tipo Login que se puede utilizar para almacenar el objeto del usuario que ha iniciado sesión. 
        public static Login UsuarioLogeado { get; set; }

        //Devuelve true si UsuarioLogeado no es nulo. 

        public static bool IsLogged { get { return UsuarioLogeado != null; } }

        // LoginView = "/Views/Login/Logueate.cshtml": Campo estático que almacena una cadena que representa la ruta a la vista de inicio de sesión. 

        public static string LoginView = "/Views/Login/Logueate.cshtml";
    }
}
