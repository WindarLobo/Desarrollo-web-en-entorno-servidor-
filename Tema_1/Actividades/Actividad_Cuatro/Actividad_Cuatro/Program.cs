using System.Security.Cryptography;
using static System.Console;
namespace Actividad_Cuatro;

internal class Program
{
    static void Main(string[] args)
    {

        /*Crea un programa que lea dos números ingresados por el usuario y calcule la
        suma, la resta, el producto y la división de estos dos números. Luego, muestra el
        resultado en la consola.*/

        do
        {

            WriteLine("Introduce el primer numero");

            string usuarioNumeroUno = ReadLine();


            if (double.TryParse(usuarioNumeroUno, out double num1))
            {
                WriteLine("Introduce el segundo numero");

                string usuarioNumeroDos = ReadLine();


                if (double.TryParse(usuarioNumeroDos, out double num2))
                {

                    WriteLine($"La suma es : {num1 + num2}");
                    WriteLine($"La resta es : {num1 - num2}");
                    WriteLine($"La multiplicacion es : {num1 * num2}");

                    if (num2 != 0)
                    {
                        WriteLine($"La division  es : {num1 / num2}");

                    }
                    else
                    {
                        WriteLine("No es posible dividir por cero.");
                        return;
                    }
                    ReadLine();
                    break;

                }
            }

            else
            {

                WriteLine("Error al introducir");

            }


        } while (true);

    }

}

