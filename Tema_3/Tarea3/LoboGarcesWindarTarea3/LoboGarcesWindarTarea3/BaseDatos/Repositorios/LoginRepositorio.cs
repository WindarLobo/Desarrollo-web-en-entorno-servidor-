using LoboGarcesWindarTarea3.Database.Models;

namespace LoboGarcesWindarTarea3.Database.Repositories;

//Implemento una interfaz IDisposable

public class LoginRepositorio : IDisposable
{
    //InstitutoMontecasteloContext _context esta variable se utiliza para acceder a la instancia del contexto de la base de datos.

    private readonly InstitutoMontecasteloContext _context;

    //LoginRepositorio(InstitutoMontecasteloContext context) defino  un constructor   

    public LoginRepositorio(InstitutoMontecasteloContext context)
    {
        _context = context;
    }

    //Este método  Login GetLoginUsernamePassword(string username, string password), en donde verifico las credenciales ingresadas por el usuario con los datos almacenados en la base de datos.

    public Login GetLoginUsernamePassword(string username, string password)
    {
        return _context.Logins.FirstOrDefault(x => x.Username == username && x.Password == password);
    }

    // Metodo Dispose() es parte de la implementación de la interfaz IDisposable.
    public void Dispose()
    {
        _context.Dispose();
    }
}
