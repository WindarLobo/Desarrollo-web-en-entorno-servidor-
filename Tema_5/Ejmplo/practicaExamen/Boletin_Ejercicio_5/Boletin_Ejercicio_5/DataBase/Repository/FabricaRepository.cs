using Boletin_Ejercicio_5.DataBase;
using Boletin_Ejercicio_5.DataBase.Models;
using Dapper;

namespace Boletin_Ejercicio_5.DataBase.Repository
{
    public interface IFabricaRepository
    {
        Task<IEnumerable<Fabricante>> GetAllFabricante();
      
    }


    public class FabricaRepository : IFabricaRepository
    {

        private readonly Conexion _conexion;

        public FabricaRepository(Conexion conexion)
        {
            _conexion = conexion;
        }

        public async Task<IEnumerable<Fabricante>> GetAllFabricante()
        {
            var queryFabricante = @"SELECT * from fabricante";

            using var connection = _conexion.ObtenerConexion();
            return await connection.QueryAsync<Fabricante>(queryFabricante);
        }


    }
}
