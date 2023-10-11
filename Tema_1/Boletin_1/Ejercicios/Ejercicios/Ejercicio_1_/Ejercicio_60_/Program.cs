using static System.Console;
namespace Ejercicio_60_
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*1 1 1 1 1 1 1

            2 2 2 2 2 2

           3 3 3 3 3

           4 4 4 4

          5 5 5

          6 6

         7

         */


            int altura = 8; // Altura del patrón

            for (int i = 1; i <= altura*2-1; i++)
            {
                // Imprimir espacios en blanco
                for (int j = 1; j <= altura - i; j++)
                {
                    Console.Write(i + " ");
                }

                  
                

                // Nueva línea después de cada fila
                Console.WriteLine();
            }
        }
    }
    }
    

