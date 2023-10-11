using static System.Console;
namespace Ejercicio_54_
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*Diseñar un programa que detecte (muestre por pantalla) el primer número que sea múltiplo de 3,5 y 
              7 en un intervalo de dos números n y m solicitados por teclado*/


            WriteLine("Introduce el primer nuemro: ");


            if (int.TryParse(ReadLine(), out int n) && n >= 0)
            {
                WriteLine("Introduce segundo numero: ");


                if (int.TryParse(ReadLine(), out int m) && m >= 0)
                {
                    ;

                    if ((intervalo(n, m) != -1))
                    {


                        WriteLine($"El primer número múltiplo de 3, 5 y 7 en el intervalo entre {n} y {m} es: {intervalo(n, m)}");
                    }
                    else
                    {
                        WriteLine($"No hay números múltiplos de 3, 5 y 7 en el intervalo entre {n} y {m}.");
                    }
                }

            }
        }

        private static int intervalo(int n, int m)
        {

            for (int i = n; i <= m; i++)
            {


                if (i % 3.5 == 0 && i % 7 == 0)
                {
                    return i;
                }

            }
            return -1;
        }
    }
}
