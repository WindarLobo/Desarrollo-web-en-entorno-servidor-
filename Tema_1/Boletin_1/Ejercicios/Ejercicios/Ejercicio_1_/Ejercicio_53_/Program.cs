using static System.Console;
namespace Ejercicio_53_
{
    public class Program
    {
        static void Main(string[] args)
        {
            /*Diseñar un programa que lea un número positivo y nos diga si ese número es primo o no.
            Utilizar para resolverlo un bucle for. Nota: Un número es primo si solamente es divisible entre 1 y sí mismo.
            Si el número introducido es negativo o cero el programa debe volver a pedir al usuario que introduzca un número positivo.*/

            do
            {
                WriteLine("Introduce un número positivo: ");


                if (int.TryParse(ReadLine(), out int n) && n >= 0)
                {



                    if (esPrimo(n))
                    {
                        WriteLine($"{n} es un número primo.");
                    }
                    else
                    {
                        WriteLine($"{n} no es un número primo.");
                    }
                }
                else
                {
                    WriteLine("Error al introducir, el numero tiene q ser positvo !!!");
                }
            }while (true);
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
    }
}