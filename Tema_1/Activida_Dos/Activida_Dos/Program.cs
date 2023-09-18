using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Console;

namespace Activida_Dos
{
    internal class Program
    {
        static void Main(string[] args)
        {

            float numero;
            float promedio;
            float i = 0;
            float suma = 0;
            do
            {
                WriteLine("Introduce un  numero");
                string usuario = Console.ReadLine();

                if (float.TryParse(usuario, out numero))
                {
                    i++;
                    suma += numero;
                }
                else
                {
                    WriteLine("Error al introducir");
                }

            } while (i < 5);


            promedio = suma / 5;

            WriteLine($"El promedio es: {promedio}");
            ReadKey();

        }
    }
}