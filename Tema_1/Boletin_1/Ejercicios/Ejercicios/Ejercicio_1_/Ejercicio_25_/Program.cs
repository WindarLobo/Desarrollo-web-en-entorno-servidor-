using static System.Console;
namespace Ejercicio_25_;

public class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que pida 3 números y los muestre en pantalla de menor a mayor.*/

        WriteLine($"Introduce el numero 1 : ");
        string usuario1 = ReadLine();
        if (int.TryParse(usuario1, out int numero1))
        {
            WriteLine($"Introduce el numero 2 : ");
            string usuario2 = ReadLine();
            if (int.TryParse(usuario2, out int numero2))
            {
                WriteLine($"Introduce el numero 3 : ");
                string usuario3 = ReadLine();
                if (int.TryParse(usuario3, out int numero3))
                {

                    int menor = numero1;
                    if (numero2 < menor)
                    {
                        menor = numero2;
                    }
                    if (numero3 < menor)
                    {
                        menor = numero3;
                    }

                    // Encontrar el mayor número
                    int mayor = numero1;
                    if (numero2 > mayor)
                    {
                        mayor = numero2;
                    }
                    if (numero3 > mayor)
                    {
                        mayor = numero3;
                    }

                    // Calcular el número del medio
                    int medio = numero1 + numero2 + numero3 - menor - mayor;
                    WriteLine($"Los números de menor a mayor son: {menor}, {medio}, {mayor}");


                }
            }
        }


    }
}
