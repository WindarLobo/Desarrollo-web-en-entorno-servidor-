using static System.Console;
namespace Ejercicio_7_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Escribir un programa que lea las horas trabajadas en un mes y la tasa a 
         la que se paga cada hora y el IRPF que se aplica como impuesto
         El programa debe calcular el salario bruto y el salario neto del trabajador.
         El salario neto se calcula restando al salario bruto el IRPF asignado..*/

        
        do
        {
            WriteLine("Introduzca las horas trabajadas en el mes: ");
            string datoIntruducido = ReadLine();
            if (double.TryParse(datoIntruducido, out double horasTrbajadas))
            {
                WriteLine("Ingrese la tasa que se paga cada hora: ");
                string tasaIntroducida = ReadLine();
                if (double.TryParse(tasaIntroducida, out double tasaHora))
                {
                    WriteLine("Ingrese el IRPF: ");
                    string irpfIntroducido = ReadLine();
                    if (double.TryParse(irpfIntroducido, out double IRPF))
                    {
                        double salarioBruto = horasTrbajadas * tasaHora;
                        double irpfCalculo = (IRPF / 100) * salarioBruto;

                        WriteLine($"\nSalario Bruto:{salarioBruto} Euros");
                        WriteLine($"IRPF: {irpfCalculo } Euros");
                        WriteLine($"Salario Neto: {salarioBruto - irpfCalculo} Euros");
                        break;

                    }
                    else
                    {
                        WriteLine("Error al introducir el IRPF");
                    }
                }
                else
                {
                    WriteLine("Error al introducir la tasa que se paga cada hora");
                }
            }
            else
            {
                WriteLine("Error al introducir las horas trabajadas en el mes");
            }
        } while (true);
    }
}

