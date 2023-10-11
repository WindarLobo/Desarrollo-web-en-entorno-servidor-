using static System.Console;
namespace Ejercicio_44_;

internal class Program
{
    static void Main(string[] args)
    {
        /*1.	Escribe un programa que muestre en tres columnas, el número, el cuadrado y el cubo de los 
         * 5 primeros números enteros a partir de uno que se introduce por teclado.*/


        WriteLine("Introduce un numero para mostrarte la tabla ");
        string usuario = ReadLine();
        if (int.TryParse(usuario, out int numero))
        {
           WriteLine("Número   Cuadrado   Cubo");
           WriteLine("------   --------   ----");


            for (int i = 0; i < 5; i++)
            {
                int numeroActual = numero + i;
                int cuadrado = numeroActual * numeroActual;
                int cubo = numeroActual * numeroActual * numeroActual;

                // Mostrar en tres columnas
                WriteLine($"{numeroActual,-9} {cuadrado,-11} {cubo}");
            }
        }
        else
        {
         WriteLine("Por favor, ingrese un número entero válido.");
        }
    }
}
