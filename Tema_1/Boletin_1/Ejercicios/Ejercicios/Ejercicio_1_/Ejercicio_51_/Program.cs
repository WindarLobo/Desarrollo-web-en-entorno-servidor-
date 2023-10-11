using static System.Console;
namespace Ejercicio_51_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que cuente cuántos números múltiplos de 3 hay por debajo de un número n dado por teclado por el usuario.*/
        WriteLine("Introduce un número positivo: ");


        if (int.TryParse(ReadLine(), out int n) && n >= 0)
        {
            int contador = 0;
            for (int i = 1; i < n; i++)
            {
                if (i % 3 == 0)
                {
                    contador++;
                }
               
            }
            WriteLine($"Hay {contador} por debajo de {n}");
        }
        else
        {
            WriteLine("Por favor, introduce un número no negativo válido.");
        }
    }
}