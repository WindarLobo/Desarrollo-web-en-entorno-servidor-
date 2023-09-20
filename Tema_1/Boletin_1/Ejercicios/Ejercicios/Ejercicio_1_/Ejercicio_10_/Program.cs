using static System.Console;
namespace Ejercicio_10_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que a partir de los lados de los catetos de un triángulo rectángulo calcule 
         la hipotenusa con dos decimales según el teorema de Pitágoras:
          h2 = a2 + b2
          h = Raiz(a2 + b2)*/
        do
        {
            WriteLine("Introduzca el lado del primer cateto: ");
            string ladoIntroducido1 = ReadLine();
            if (double.TryParse(ladoIntroducido1, out double primeroCateto))
            {

                WriteLine("Introduzca el lado del segundo cateto: ");
                string ladoIntroducido2 = ReadLine();
                if (double.TryParse(ladoIntroducido2, out double segundoCateto))
                {

                    WriteLine($"La hipotenusa es: {Math.Sqrt(Math.Pow(primeroCateto, 2) + Math.Pow(segundoCateto, 2))}");

                }
                else
                {
                    WriteLine("Error al introducir el segundo cateto");
                }
            }
            else
            {
                WriteLine("Error al introducir el primer cateto");
            }
        } while (true);
    }
}