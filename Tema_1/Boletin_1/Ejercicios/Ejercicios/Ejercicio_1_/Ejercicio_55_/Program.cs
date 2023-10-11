namespace Ejercicio_55_
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*21.	Mostrar la tabla de multiplicar de los 10 primeros números*/
            for (int numero = 1; numero <= 10; numero++)
            {
                Console.WriteLine($"Tabla de multiplicar del {numero}:");
                for (int i = 1; i <= 10; i++)
                {
                    int resultado = numero * i;
                    Console.WriteLine($"{numero} x {i} = {resultado}");
                }
                Console.WriteLine();
            }
        }
    }
    }
