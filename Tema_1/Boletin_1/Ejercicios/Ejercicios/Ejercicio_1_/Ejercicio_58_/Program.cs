namespace Ejercicio_58_
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*   *

                * *

               * * *

              * * * *

             * * * * *

              * * * *

               * * *

               * *

                *
                */


            int altura = 5; 
            int espacio = altura - 1;
            int asteriscos = 1;

            for (int i = 1; i <= altura * 2 - 1; i++)
            {
                for (int j = 1; j <= espacio; j++)
                {
                    Console.Write(" ");
                }

                for (int j = 1; j <= asteriscos; j++)
                {
                    Console.Write("* ");
                }
                Console.WriteLine();

                if (i < altura)
                {
                    espacio--;
                    asteriscos++;
                }
                else
                {
                    espacio++;
                    asteriscos--;
                }
            }
        }
    }
}