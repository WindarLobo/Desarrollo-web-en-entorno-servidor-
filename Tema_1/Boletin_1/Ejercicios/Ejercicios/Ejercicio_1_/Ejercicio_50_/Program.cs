using static System.Console;
namespace Ejercicio_50_
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*Calcular la suma de los n primeros números que sean múltiplos de 5, siendo n un número no negativo introducido por teclado.*/

            WriteLine("Introduce un número positivo: ");


            if (int.TryParse(ReadLine(), out int n) && n >= 0)
            {
                var suma = 0;
                for (int i = 1, contador = 0; contador < n; i++)
                {
                    if (i % 5 == 0)
                    {
                        suma += i;
                        contador++;
                    }
                }

               
                WriteLine($"La suma de los primeros {n} números múltiplos de 5 es: {suma}");
            }
            else
            {
               WriteLine("Por favor, introduce un número no negativo válido.");
            }
        }
    }
}