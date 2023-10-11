using static System.Console;
namespace Ejercicio_56_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Realizar un programa que muestre la siguiente salida: a)

        * * * * * * *

        * * * * * *

       * * * * *

       * * * *

       * * *

       * *

       *
       */

        for (int i = 8; i>=1; i--)
        {
           
            
            for (int j = 1; j < i; j++)
            {
                Write("* ");
            }
            WriteLine();
        }
        ReadLine();
    }
}