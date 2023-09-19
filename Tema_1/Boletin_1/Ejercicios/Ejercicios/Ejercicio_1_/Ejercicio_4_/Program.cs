using static System.Console;
namespace Ejercicio_4_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Una temperatura dada en grados Celsius (centígrados) 
         puede ser convertida a una temperatura equivalente Fahrenheit de acuerdo a la siguiente fórmula :
         f = (9/5) *C + 32
         Escribir un programa que lea la temperatura en grados centígrados y la convierta en grados Fahrenheit.*/
        do
        {
            WriteLine("Introduzca la temperatura C ");
            string centigradosIntroducido = ReadLine();
            if (double.TryParse(centigradosIntroducido, out double C))
            {
                double f = (9.0 / 5.0) * C + 32;
                WriteLine($"grados Fahrenheit : {f}F");
                ReadLine();
                break;
            }
            else
            {
                WriteLine("Error al introducir la temperatura");
                ReadLine();
            }
        } while (true);
    }

}