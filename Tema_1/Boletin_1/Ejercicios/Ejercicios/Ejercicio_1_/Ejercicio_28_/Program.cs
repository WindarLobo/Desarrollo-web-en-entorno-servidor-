using static System.Console;
namespace Ejercicio_28_;

public class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que pida un número y diga si es positivo o negativo.*/

        WriteLine($"Introduce un numero : ");
        string usuario1 = ReadLine();
        if (int.TryParse(usuario1, out int numero1))
        {

            if (numero1 > 0)
            {
                WriteLine("El numero es positivo");
            }
            else
            {
                WriteLine("El numero es negativo");
            }

        }
    }
}