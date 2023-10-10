using System;
using static System.Console;
namespace Ejercicio_37_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que pase de Kg a otra unidad de medida de masa,mostrar en pantalla un menú con las opciones posibles:
        a. Hectogramos
        b. Decagramos
        d. Decigramos
        f. Miligramos*/

       WriteLine("Ingrese el valor en Kilogramos:");
        string usuario = ReadLine();
        if (double.TryParse(usuario, out double kg))
        {

            WriteLine($"Menu:\n1.- Hectogramos\n2.- Decagramos \n3.-Decigramos \n4.-Miligramos ");
            string usuario1 = ReadLine();
            if (int.TryParse(usuario1, out int opcion))
            {
                menu(opcion, kg);

            }
            else
            {
                WriteLine("Error al introducir una opcion ");
            }

        }
        else
        {
            WriteLine("Error al introducir el valor del kilogramo ");
        }
    }

    private static double menu(int opcion, double kg)
    {
        double resultado = 0;
        switch (opcion)
        {

            case 1:
                resultado = 10 * kg;
                WriteLine($"{kg} Kilogramos son {resultado} Hectogramos.");
                break;
            case 2:
                resultado = 100 * kg;
                WriteLine($"{kg} Kilogramos son {resultado} Decagramos.");
                break;
            case 3:
                resultado = 10000 * kg;
                WriteLine($"{kg} Kilogramos son {resultado} Decigramos.");
                break;
            case 4:
                resultado = 1000000 * kg;
                WriteLine($"{kg} Kilogramos son {resultado} Miligramos.");
                break;

            default:
                WriteLine("El número ingresado no está entre las opciones .");
                break;
        }
        return resultado;
    }

    }




