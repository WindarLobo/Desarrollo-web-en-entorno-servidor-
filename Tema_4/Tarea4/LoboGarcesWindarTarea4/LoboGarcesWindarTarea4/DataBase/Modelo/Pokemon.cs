﻿
namespace LoboGarcesWindarTarea4.DataBase.Modelo;

//Pokemon representan objetos.
public class Pokemon
{
    public int PokemonId { get; set; }
    public string NombrePokemon { get; set; }
    public double Peso { get; set; }
    public double Altura { get; set; }
    public List<Tipo> Tipos { get; set; }
    public string Imagen { get; set; }
    public string AllTipos
    {
        get
        {
            return string.Join(", ", Tipos);
        }
    }
}

//PokemonFull extiende de Pokemon con detalles adicionales.
public class PokemonFull : Pokemon
{

    public IEnumerable<Estadistica> Estadisticas { get; set; }
    public IEnumerable<Ataque> Ataques { get; set; }
    public IEnumerable<Evolucion> Evoluciones { get; set; }
    public IEnumerable<DetalleEvoluciones> FlujoEvolucion { get; set; }
    public IEnumerable<DetalleEvoluciones> FlujoInvolucion { get; set; }
}


