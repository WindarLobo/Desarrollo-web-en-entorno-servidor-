using System.Data;
using System.Data.SqlClient;

namespace LoboGarcesWindarTarea4.DataBase
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
