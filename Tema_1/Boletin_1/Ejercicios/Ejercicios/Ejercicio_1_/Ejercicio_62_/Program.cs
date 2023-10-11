using static System.Console;
namespace Ejercicio_62_
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*Realizar un programa que cuente cuántos números primos hay por debajo de uno dado.*/


            WriteLine("Introduce un número positivo: ");


            if (int.TryParse(ReadLine(), out int n) && n >= 0)
            {

                int cantidadPrimos = ContarNumerosPrimos(n);
                WriteLine($"Cantidad de números primos por debajo de {n} :  {cantidadPrimos}");

            }
        }
        private static bool esPrimo(int numero)
        {

            for (int i = 2; i < numero; i++)
            {
                if ((numero % i) == 0)
                {

                    return false;
                }
            }


            return true;
        }
        static int ContarNumerosPrimos(int limite)
        {
            int cantidadPrimos = 0;
            for (int i = 2; i < limite; i++)
            {
                if (esPrimo(i))
                {
                    cantidadPrimos++;
                }
            }
            return cantidadPrimos;
        }

    }
}
