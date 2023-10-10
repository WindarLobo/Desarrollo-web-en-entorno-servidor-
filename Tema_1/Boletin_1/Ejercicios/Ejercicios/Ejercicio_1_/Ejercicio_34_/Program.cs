using static System.Console;
namespace Ejercicio_34_;

public class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que tome tres números y diga si la multiplicación de los dos primeros es igual al tercero.*/

        WriteLine($"Introduce un numero 1: ");
        string usuario1 = ReadLine();
        if (int.TryParse(usuario1, out int numero1))
        {
            WriteLine($"Introduce un numero 2: ");
            string usuario2 = ReadLine();
            if (int.TryParse(usuario2, out int numero2))
            {
                WriteLine($"Introduce un numero 3 : ");
                string usuario3 = ReadLine();
                if (int.TryParse(usuario3, out int numero3))
                {
                    bool esIgualALaMultiplicacion = numero3 == numero1 * numero2;


                    if (esIgualALaMultiplicacion)
                    {
                        WriteLine("El tercer número es igual a la multiplicacion del primero y el segundo.");
                    }
                    else
                    {
                        WriteLine("El tercer número no es igual a la multiplicacion del primero y el segundo.");
                    }
                }
            }
        }
    }
}