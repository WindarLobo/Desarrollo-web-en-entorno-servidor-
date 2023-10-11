using static System.Console;
namespace Ejercicio_47_
{
    public class Program
    {
        static void Main(string[] args)
        {
            /*	Calcular la suma de la serie 1/13 + 1/23 +... + 1/n3. Donde n es un número positivo que se introduce por teclado.*/

            {

                WriteLine("Introduce un número positivo: ");


                if (int.TryParse(ReadLine(), out int n) && n >= 0)
                {
                    double suma = 0;

                    for (int i = 0; i < n; i++)
                    {
                        suma += 1.0 / (i * i * i);
                    }
                    WriteLine($"LA suma de la serie es {suma}");

                }
                else
                {
                    WriteLine("Por favor, introduce un númeroque sea positivo.");
                }
            }
        }
    }
}