using static System.Console;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace Actividad_Nueve;

internal class Program
{
    static void Main(string[] args)
    {
        /*Usando el bucle
        do while , crea un programa que le pida al usuario
        ingresar un número y luego calcule el factorial del número ingresado.
        El programa debe ejecutarse
         AL MENOS UNA VEZ y debe repetir esta
         acción hasta que el usuario ingrese un número negativo.*/


        do
        {

            WriteLine("Ingrese un numero positivo y para salir del programa introduce un numero negativo");
            string numeroIngresado = ReadLine();

            if (int.TryParse(numeroIngresado, out int factoria))
            {
                if (factoria < 0)
                {
                    WriteLine("Fin programa .");
                    break;

                }

                WriteLine($"El factorial de {factoria} es {factorial(factoria)}");
                ReadLine();
            }
            else
            {
                WriteLine("Error: debes de ingresar un nuemro entero");
            }

        } while (true);

    }
    private static int factorial(int num)
    {
        int totalNumero = 1;
     
        for (int i = 1; i <= num; i++)
        {
            totalNumero *= i;

        }

        return totalNumero;
    }
}
