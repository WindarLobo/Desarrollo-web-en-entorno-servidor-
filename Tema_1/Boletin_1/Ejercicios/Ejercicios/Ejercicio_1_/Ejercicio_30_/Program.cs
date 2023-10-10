using static System.Console;
namespace Ejercicio_30_;

public class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que pida tres números e indicar si el tercero es igual a la suma del primero y el segundo.*/

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
                    bool esIgualALaSuma = numero3 == numero1 + numero2;

                    // Mostrar el resultado
                    if (esIgualALaSuma)
                    {
                        WriteLine("El tercer número es igual a la suma del primero y el segundo.");
                    }
                    else
                    {
                        WriteLine("El tercer número no es igual a la suma del primero y el segundo.");
                    }

                }
            }
        }
    }
}