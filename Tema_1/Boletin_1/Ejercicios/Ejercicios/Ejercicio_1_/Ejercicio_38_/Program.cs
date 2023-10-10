using static System.Console;
namespace Ejercicio_38_;

public class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que lea un importe bruto y calcule su importe neto, si es mayor de 15.000 se le aplicará un 16% de impuestos, en caso contrario se le aplicará un 10%.*/
        
        double porcentaje;
       
        WriteLine("Ingrese el importe bruto:");
        string usuario = ReadLine();
        if (double.TryParse(usuario, out double bruto))
        {
            if (bruto > 15000)
            {
                porcentaje = 0.16;
              
            }
            else
            {
                porcentaje = 0.10;
               

            }
            double impuesto = bruto * porcentaje;
            double importeNeto = bruto - impuesto;
          
            WriteLine($"El importe bruto es {bruto} euros y le aplicamos {porcentaje} % el importe neto es {importeNeto} euros ");
        }

    }
}