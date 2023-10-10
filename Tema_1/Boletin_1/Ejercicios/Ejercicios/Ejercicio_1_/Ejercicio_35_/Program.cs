using static System.Console;
namespace Ejercicio_35_;

public class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que tome tres números y diga si el tercero es el resto de la división de los dos primeros.*/

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
                    if (numero1 != 0 && numero2 != 0)
                    {
                        int resto = (numero1 % numero2);
                        if (resto == numero3)
                        {

                            WriteLine($"{numero3} es el resto de la división entre {numero1} y {numero2}.");
                        }
                        else
                        {
                            WriteLine($"{numero3} no es el resto de la división entre {numero1} y {numero2}.");
                        }
                    }
                    else
                    {
                        WriteLine("Los dos primeros números deben ser diferentes de cero para realizar la división.");
                    }
                }

            }
        }
    }
}
