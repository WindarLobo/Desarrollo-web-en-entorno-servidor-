using static System.Console;
namespace Ejercicio_32_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que tome dos números del 1 al 5 y diga si ambos son primos.*/


        WriteLine($"Introduce el primer  numero   del 1 al 5 : ");
        string usuario = ReadLine();
        if (int.TryParse(usuario, out int numero1))
        {
            WriteLine($"Introduce el segundo numero   del 1 al 5 : ");
            string usuario2 = ReadLine();
            if (int.TryParse(usuario2, out int numero2))
            {

                if (EsPrimo(numero1) && EsPrimo(numero2))
                {
                    WriteLine("Es primero");
                }
                else
                {
                    WriteLine("No es primo");
                }

            }

        }
    }

    private static bool EsPrimo(int numero)
    {
        for (int i = 2; i < numero; i++)
        {
            if ((numero % i) == 0)
            {

                return false;
            }
        }


        return true;
    }
}

