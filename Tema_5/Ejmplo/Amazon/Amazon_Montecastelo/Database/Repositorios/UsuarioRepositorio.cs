using Amazon_Montecastelo.Database.Models;
using NuGet.Protocol.Plugins;

namespace Amazon_Montecastelo.Database.Repositorios
{
    public class UsuarioRepositorio : IDisposable
    {
        private readonly AmazonContext _context;

        public UsuarioRepositorio(AmazonContext context)
        {
            _context = context;
        }
        public IQueryable<Usuario> GetAllUsuario()
        {
            return _context.Usuarios.AsQueryable();
        }

        public Usuario GetUsuarioByID(int id)
        {
            return _context.Usuarios.FirstOrDefault(usuario => usuario.UsuarioID == id);
        }
        public Usuario GetLoginUsernamePassword(string Email, string Contrasena)
        {
            return _context.Usuarios.FirstOrDefault(x => x.Email == Email && x.Contrasena == Contrasena);
        }

        public void Save(Usuario usario)
        {
            _context.Usuarios.Add(usario);
            _context.SaveChanges();
        }
        public void Update()
        {
            _context.SaveChanges();
        }
       

        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
