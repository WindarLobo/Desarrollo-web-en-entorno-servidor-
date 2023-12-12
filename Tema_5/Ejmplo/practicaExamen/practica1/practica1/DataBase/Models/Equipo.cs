namespace practica1.DataBase.Models;

//Equipo obtiene una lista de Pokemons.
public class Equipo
{ 
public int EquipoId { get; set; }
public string Nombre { get; set; }
public List<Pokemon> Pokemons { get; set; } = default!;

   
}




