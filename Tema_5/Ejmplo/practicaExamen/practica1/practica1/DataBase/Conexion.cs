using System.Data.SqlClient;

namespace practica1.DataBase
{
    public class Conexion
    {
        private readonly string _connectionstring;

        public Conexion(string connection)
        {
            _connectionstring = connection;
        }

        //Método (ObtenerConexion()) que devuelve la conexión.
        public SqlConnection ObtenerConexion()
        {
            var conexion = new SqlConnection(_connectionstring);
            conexion.Open();
            return conexion;
        }
    }
}
