using static System.Console;
namespace Ejercicio_45_;

internal class Program
{
    static void Main(string[] args)
    {
        /*1.	Bucle for descendente que escribe números reales y su raíz cuadrada. Se inicializa la variable n a 16, en cada iteración del bucle se decrementa n en 2,5.
    El mensaje resultado de la ejecución deberá ser el siguiente:*/

        double n = 16;

        WriteLine("N  Raiz(n)");
        WriteLine("--   ----- ");
        for (int i = 0; n >= 0; n -= 2.5) {
            double raizCuadrada = Math.Sqrt(n);
            WriteLine($"{n,-7}{raizCuadrada}");
        }
    }
}