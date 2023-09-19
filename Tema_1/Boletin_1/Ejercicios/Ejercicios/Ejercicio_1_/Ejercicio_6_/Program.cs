using static System.Console;
namespace Ejercicio_6_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Escribir un programa que permita intercambiar los contenidos de dos variables x e y de un cierto tipo de datos.*/

        int auxiliar, x, e;
        do
        {
            WriteLine("Introduzca el primer numero");
            string numero1 = ReadLine();
            if (int.TryParse(numero1, out x))
            {
                WriteLine($"El  num1 es : {x}");
                ReadLine();

                WriteLine("Introduzca el segundo numero");
                string numero2 = ReadLine();
                if (int.TryParse(numero2, out e))
                {
                    WriteLine($"El  num2 es : {e}");
                    ReadLine();

                    WriteLine(" Intercambiando los valores..");
                    ReadLine();
                    auxiliar = x;
                    x = e;
                    e = auxiliar;

                    WriteLine($"Ahora, el valor de num1 es:{x}");
                    ReadLine();
                    WriteLine($"Ahora, el valor de num2 es:{e}");
                    ReadLine();
                    break;
                   
                }

                else
                {
                    WriteLine("Error al introducir el segundo numero");
                }

            }
            else
            {
                WriteLine("Error al introducir el primer  numero");
            }
        } while (true);



    }
}