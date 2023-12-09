using Amazon_Montecastelo.Database.Interface;
using Amazon_Montecastelo.Database.Models;
using Dapper;
using System.Data;

namespace Amazon_Montecastelo.Database.Repositorios
{
    public class UsuarioRepository : IUsuarioRepository
    {

        private readonly Conexion _conexion;

        public UsuarioRepository(Conexion conexion)
        {
            _conexion = conexion;
        }

        public async Task<IEnumerable<Usuario>> GetAllUsuario()
        {
            var query = @"SELECT * from usuarios";

            using var connection = _conexion.ObtenerConexion();
            return await connection.QueryAsync<Usuario>(query);
        }

        public async Task<Usuario> GetUsuarioId(int? UsuarioID)
        {
            var query = @"Select * from usuarios where UsuarioID = @UsuarioID";
            using var connection = _conexion.ObtenerConexion();
            return await connection.QueryFirstOrDefaultAsync<Usuario>(query, new { UsuarioID });

        }


        public async Task<Usuario> GetLoginUsernamePassword(string Email, string Contrasena)
        {

            var queryUsuario = "SELECT * FROM Usuarios WHERE Email = @Email AND Contrasena = @Contrasena";

            using var connection = _conexion.ObtenerConexion();

            return await connection.QueryFirstOrDefaultAsync<Usuario>(queryUsuario, new {Contrasena,Email});
           
        }

        public async Task CreateUsuarioo(Usuario usuario)
        {

            var queryUsuario = @"Insert into Usuarios (NombreUsuario,Contrasena,Email,userType) Values (@NombreUsuario,@Contrasena,@Email,@userType)";
            using var connection = _conexion.ObtenerConexion();
            await connection.ExecuteAsync(queryUsuario, new {usuario.NombreUsuario,usuario.Contrasena,usuario.Email, usuario.userType});

        }

    }
}
