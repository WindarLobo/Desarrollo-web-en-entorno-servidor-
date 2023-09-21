using static System.Console;
namespace Ejercicio_14_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Escribir un programa que decida si un número es par o impar e informe al usuario*/

        do
        {
            WriteLine("Introduzca un numero para comprobar si es par o impar");
            string usuario = ReadLine();
            if (int.TryParse(usuario, out int numero))
            {
                if (numero % 2 == 0)
                {
                    WriteLine("Par");
                }
                else
                {
                    WriteLine("Impar");
                }
                ReadLine();
                break;
            }
            else
            {
                WriteLine("Error de lectura : debes de introducir un numero entero");
            }
        }while (true);

    }
    
}