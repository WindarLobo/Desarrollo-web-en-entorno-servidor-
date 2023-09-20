using static System.Console;
namespace Ejercicio_12_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Realizar un programa que lea el lado de un cubo y calcule los siguientes datos:
         D=√3*a
         AL=4*a2
          V=a3 */
        do
        {

            WriteLine("Ingrese la longitud de un lado del cubo: ");
            string datosIngresados = ReadLine();
            if (double.TryParse(datosIngresados, out double ladoCubo))
            {


                WriteLine($"\nDiagonal del cubo es : {Math.Sqrt(3) * ladoCubo}\nEl area lateral del cubo es : " +
                    $"{4 * Math.Pow(ladoCubo, 2)}\nVolumen del cubo es : {Math.Pow(ladoCubo, 3)}");
                ReadLine();
                break;
            }
            else
            {
                WriteLine("\nError al introducir la longitud de un lado del cubo");
                ReadLine();
            }
        }while (true);
    }
}