using Microsoft.Data.SqlClient;

namespace Pactica5.DataBase
{
    public class Conexion
    {
        private readonly string _connectionstring;

        public Conexion(string connection)
        {
            _connectionstring = connection;
        }


        public SqlConnection ObtenerConexion()

        {
            var conexion = new SqlConnection(_connectionstring);
            conexion.Open();
            return conexion;
        }
    }
}


