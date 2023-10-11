namespace Ejercicio_61_
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*	Realizar un programa que muestre todos los números perfectos por debajo de uno dado.*/


            Console.WriteLine("Introduce el límite superior para encontrar números perfectos: ");
            int limiteSuperior = int.Parse(Console.ReadLine());

            Console.WriteLine("Números perfectos por debajo de : ", limiteSuperior);
            for (int num = 2; num < limiteSuperior; num++)
            {
                if (EsNumeroPerfecto(num))
                {
                    Console.WriteLine(num);
                }
            }

            Console.ReadLine();
        }

        private static bool EsNumeroPerfecto(int num)
        {
            int sumaDivisores = 1;
            for (int i = 2; i <= Math.Sqrt(num); i++)
            {
                if (num % i == 0)
                {
                    sumaDivisores += i;
                    if (i != num / i) // para evitar contar el mismo divisor dos veces
                    {
                        sumaDivisores += num / i;
                    }
                }
            }
            return sumaDivisores == num;
        }
    }
}

