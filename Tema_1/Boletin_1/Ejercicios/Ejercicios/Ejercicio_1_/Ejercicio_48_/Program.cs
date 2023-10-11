using static System.Console;
namespace Ejercicio_48_
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*Calcular la suma de los divisores de un número n no negativo introducido por teclado*/

            {

                WriteLine("Introduce un número positivo: ");


                if (int.TryParse(ReadLine(), out int n) && n >= 0)
                {
                    double sumaDivisores = 0;

                    for (int i = 1; i <= n; i++)
                    {
                        if (n % i == 0)
                        {
                            sumaDivisores += i;
                        }

                    }
                    WriteLine($"La suma de los divisores de {n} es: {sumaDivisores}");
                }
                else
                {
                   WriteLine("Por favor, introduce un número no negativo válido.");
                }
            }
            }
        }
    }


