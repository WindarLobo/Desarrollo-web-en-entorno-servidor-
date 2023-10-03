using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Console;
namespace Ejercicio_2
{
    public class Program
    {
        static Random random = new Random();
        static void Main(string[] args)
        {

            /*Crea un array de 5 elementos de cadenas de caracteres, inicialízala con datos de
            strings generados automáticamente. El tamaño de cada palabra debe ser
            aleatorio entre 1 y 20 letras.
            Copia los elementos de la matriz en otra matriz, pero en orden inverso, y
            muéstralo por la pantalla.*/

            string[] cadena = new string[5];

            for (int i = 0; i < cadena.Length; i++)
            {

                cadena[i] = cadenaAletoria(random.Next(1, 21));

            }

            string[] reversedArray = new string[cadena.Length];

            for (int i = 0; i < cadena.Length; i++)
            {
                reversedArray[i] = cadena[cadena.Length - 1 - i];
            }

            WriteLine("Array original : ");
            foreach (string origina in cadena)
            {
                WriteLine(origina);
            }

            WriteLine("\nArray inversa : ");
            foreach (string reversa in reversedArray)
            {
                WriteLine(reversa);
            }
            ReadLine();
        }



        private static string cadenaAletoria(int longitudPalabra)
        {
            string caracteres = "abcdefghijklmnopqrstuvwxyz";

            char[] cadena = new char[longitudPalabra];

            for (int i = 0; i < longitudPalabra; i++)
            {
                cadena[i] = caracteres[random.Next(caracteres.Length)];
            }

            return new string(cadena);
        }

    }
}
