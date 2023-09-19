using System.Net.NetworkInformation;
using static System.Console;
namespace Ejercicio_3_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Realizar un programa que solicite al usuario dos números y calcule guardándolo en SENDAS VARIABLES:
         * la SUMA, la RESTA , y la MULTIPLICACIÓN de esos dos números y muestre por pantalla los resultados con mensajes como:
          “La suma es “ , suma.
           “La resta es “, resta.
          “La multiplicación es “, multiplicación.*/
        do
        {
            WriteLine($"Introduzca el primer numero  ");
            string usuario1 = ReadLine();
            if (int.TryParse(usuario1, out int num1))
            {
                WriteLine($"Introduzca el segundo numero  ");
                string usuario2 = ReadLine();
                if (int.TryParse(usuario2, out int num2))
                {
                    WriteLine($"La suma es : {num1 + num2}\nLa resta es : {num1 - num2}\nLa multiplicación es : {num1 * num2}");
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
                WriteLine("Error al introducir el primer numero");

            }
          
        } while(true);

    }

}