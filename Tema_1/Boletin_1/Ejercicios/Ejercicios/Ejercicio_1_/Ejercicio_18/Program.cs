using static System.Console;
namespace Ejercicio_18;

internal class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que lea dos números y calcule el mayor elevado al más pequeño (usar la clase Math.pow (base,exponente).*/

        
        WriteLine($"Introduzca el numero 1 ");
        string usuario1 = ReadLine();
        if (int.TryParse(usuario1, out int numero1))
        {


            WriteLine($"Introduzca el numero 2 ");
            string usuario2 = ReadLine();
            if (int.TryParse(usuario2, out int numero2))
            {
                double resultado;

                if (numero1 > numero2)
                {

                     resultado = Math.Pow(numero1, numero2);
                }
                else
                {

                     resultado = Math.Pow(numero2, numero1);
                }
                WriteLine($"El resultado de {Math.Max(numero1, numero2)} elevado a la {Math.Min(numero1, numero2)} es: {resultado}");
                ReadLine();
            }
        }
    }



}
