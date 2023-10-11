using static System.Console;
namespace Ejercicio_49_
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*1.	Diseñar un programa que lea un número introducido por teclado y decida si ese número es perfecto.
           Un número es perfecto si es igual a la suma de sus divisores excepto el mismo. Por ejemplo,
            el 6 es un número perfecto porque la suma de sus divisores da 1+2+3 =6.*/

            WriteLine("Introduce un número positivo: ");


            if (int.TryParse(ReadLine(), out int n) && n >= 0)
            {
                double sumaDivisores = 0;

                for (int i = 1; i < n; i++)
                {
                    if (n % i == 0)
                    {
                        sumaDivisores += i;
                    }

                }

                if (sumaDivisores == n)
                {
                    WriteLine($"{n} es un número perfecto.");
                }
                else
                {
                    WriteLine($"{n} no es un número perfecto.");
                }
            }
            else
            {
                WriteLine("Por favor, introduce un número entero positivo válido.");
            }
        }
        
    }
}