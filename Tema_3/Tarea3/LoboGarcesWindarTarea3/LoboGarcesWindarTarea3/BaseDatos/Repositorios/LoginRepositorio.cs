using LoboGarcesWindarTarea3.Database.Models;

namespace LoboGarcesWindarTarea3.Database.Repositories
{
    public class LoginRepositorio : IDisposable
    {
        private readonly InstitutoMontecasteloContext _context;

        public LoginRepositorio(InstitutoMontecasteloContext context)
        {
            _context = context;
        }
      
        public Login GetLoginUsernamePassword(string Username, string Password)
        {
            return _context.Logins.FirstOrDefault(x => x.Username == Username && x.Password == Password);   
        }


        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
