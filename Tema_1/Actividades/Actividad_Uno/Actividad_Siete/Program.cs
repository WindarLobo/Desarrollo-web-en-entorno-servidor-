using System.Security.Cryptography;
using static System.Console;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace Actividad_Siete;

internal class Program
{
    static void Main(string[] args)
    {
        /*Usando el bucle
         while , crea un programa que le pida al usuario ingresar
         un número y luego calcule la suma de los números desde 1 hasta el
         número ingresado.
         El programa debe repetir esta acción hasta que el usuario ingrese un 0.*/

        int suma = 0;

        while (true)
        {
            WriteLine("Introduzca un numero ");
            string usuario = ReadLine();
            if (int.TryParse(usuario, out int numero))
            {
                if (numero == 0)
                {
                    WriteLine("Fin del programa");
                    break;

                }

                suma += numero;
            }

        }
        WriteLine($"La suma total es : {suma}");

    }
}