namespace Activida1.Models
{
    public class Pokemon
    {
        public int numero_pokedex{ get; set; }
        public string Nombre { get; set; }
        public int peso { get; set; }
        public int altura { get; set; }

        public Pokemon(int numero_pokedex, string nombre, int peso, int altura)
        {
            this.numero_pokedex = numero_pokedex;
            this.Nombre = nombre;
            this.peso = peso;
            this.altura = altura;
        }
    }
}
