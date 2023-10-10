using static System.Console;
namespace Ejercicio_33_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que tome dos números y diga si ambos son pares o impares.*/


        WriteLine($"Introduce el primer  numero  : ");
        string usuario = ReadLine();
        if (int.TryParse(usuario, out int numero1))
        {
            WriteLine($"Introduce el segundo numero   : ");
            string usuario2 = ReadLine();
            if (int.TryParse(usuario2, out int numero2))
            {
                if (esPar(numero1) && esPar(numero2))
                {
                    WriteLine("Es par");
                }
                else if (!esPar(numero1) && !esPar(numero2))
                {
                    WriteLine("Ambos números son impares.");
                }
                else
                {
                    WriteLine("Uno de los números es par y el otro es impar.");
                }

            }
        }
    }
    private static bool esPar(int numero)
    {
        if (numero % 2 == 0)
        {
            return true;
        }
        return false;
    }
}