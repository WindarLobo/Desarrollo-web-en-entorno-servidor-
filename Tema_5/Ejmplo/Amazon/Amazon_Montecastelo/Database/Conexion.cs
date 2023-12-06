using Microsoft.Data.SqlClient;

namespace Amazon_Montecastelo.Database
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
