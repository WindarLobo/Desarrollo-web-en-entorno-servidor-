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
        int numero;

        do
        {

            WriteLine("Introduzca un numero ");
            string usuario = ReadLine();
            if (int.TryParse(usuario, out numero))
            {
                if (numero <= 0)
                {
                    break;
                }

                int i = 1;
                while (i <= numero)
                {

                    suma += i;
                    i++;
                }
                WriteLine($"La suma total es : {suma}");
                suma = 0;
            }
            else
            {
                WriteLine("Error al introducir un numero");
            }



        } while (true);
    }
}