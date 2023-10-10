using static System.Console;
namespace Ejercicio_39_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que calcule el sueldo que le corresponde al trabajador de una empresa que cobra 40.000 euros anuales,
         * el programa debe realizar los cálculos en función de los siguientes criterios:
          a. Si lleva más de 10 años en la empresa se le aplica un aumento del 10%.
          b. Si lleva menos de 10 años pero más que 5 se le aplica un aumento del 7%.
          c. Si lleva menos de 5 años pero más que 3 se le aplica un aumento del 5%.
           d. Si lleva menos de 3 años se le aplica un aumento del 3%.*/


        double porcentaje = 0;
        double sueldoBase = 40000;
        WriteLine("Ingrese el tiempo que lleva en la empresa :");
        string usuario = ReadLine();
        if (double.TryParse(usuario, out double tiempoEmpresa))
        {
            if (tiempoEmpresa > 10)
            {
                porcentaje = 0.10;

            }
            else if (tiempoEmpresa > 5)
            {
                porcentaje = 0.07; 
            }
            else if (tiempoEmpresa > 3)
            {
                porcentaje = 0.05; 
            }
            else
            {
                porcentaje = 0.03; 
            }


            double sueldoConAumento = sueldoBase + (sueldoBase * porcentaje);

            WriteLine($"El importe bruto es {sueldoBase} euros y le aplicamos {porcentaje} % el sueldo con el aumento es  {sueldoConAumento} euros ");
        }

    }
}

