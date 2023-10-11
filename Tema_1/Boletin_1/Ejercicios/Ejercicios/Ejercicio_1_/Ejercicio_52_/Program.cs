using static System.Console;
namespace Ejercicio_52_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que cuente los divisores de un número n introducido por teclado.*/

        WriteLine("Introduce un número positivo: ");


        if (int.TryParse(ReadLine(), out int n) && n >= 0)
        {
            double contador = 0;

            for (int i = 1; i <= n; i++)
            {
                if (n % i == 0)
                {
                    contador++;
                }

            }
            WriteLine($"El nuemro {n} tienes  {contador} divisores");
        }
        else
        {
            WriteLine("Por favor, introduce un número no negativo válido.");
        }
    }
}

