using static System.Console;
namespace Ejercicio_9_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que a partir del lado de un cuadrado calcule su área, su perímetro y su diagonal:
        p = 4*lado
        d = lado ×√2
        A = lado2*/
       
        WriteLine("Introduzca el lado de un cuadrado: ");
        string ladoIntroducido=ReadLine();
        if(double.TryParse(ladoIntroducido, out double ladoCuadrado))
        {
            
            WriteLine($"El área es : { ladoCuadrado * ladoCuadrado} su perímetro {4 * ladoCuadrado} y su diagonal {Math.Sqrt(2)*ladoCuadrado}. ");
            ReadLine();
        }
    }
}