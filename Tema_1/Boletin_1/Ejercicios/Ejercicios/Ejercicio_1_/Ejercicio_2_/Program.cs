using static System.Console;
namespace Ejercicio_2_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que pide al usuario que introduzca el precio 
          (variable Double) y la cantidad (variable Short) de un determinado producto.
         A continuación, calcula el importe final que será precio*cantidad y muestra por pantalla el siguiente mensaje:
         “El precio del producto es x euros y la cantidad que compra es y por lo tanto debe pagar z euros. Vuelva pronto.”*/

        do
        {
            WriteLine("Introduzca el precio");
            string precioIntroducido = ReadLine();
            if (double.TryParse(precioIntroducido, out double precio))
            {
                WriteLine("Introduzca la cantidad");
                string cantidadIntroducida = ReadLine();
                if (short.TryParse(cantidadIntroducida, out short cantidad))
                {
                    double importeFinal = precio * cantidad;

                    WriteLine($"El precio del producto es {precio} euros y la cantidad que compra es: {cantidad} " +
                        $" y por lo tanto debe pagar {importeFinal} euros.\n Vuelva pronto =).");
                    ReadLine();
                    break;
                }

                else
                {
                    WriteLine("Error al introducir la cantidad");
                }
            }

            else
            {
                WriteLine("Error al introducir el precio");
            }
        }while (true);
    }
}
