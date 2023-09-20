using static System.Console;
namespace Ejercicio_11_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que calcule la rebaja realizada sobre un determinado producto a partir del precio inicial
          y el porcentaje de descuento. El programa debe mostrar un mensaje informando:
           “Al aplicar un … por ciento de descuento el precio final del producto es de precio final y por lo tanto se ahorra … euros.”*/


        do
        {
            WriteLine("Introduzca el precio del producto: ");
            string precioIntroducido = ReadLine();
            if (double.TryParse(precioIntroducido, out double precioProducto))
            {
                WriteLine("Introduzca el porcentaje de descuento: ");
                string porcentajeIntroducido = ReadLine();
                if (double.TryParse(porcentajeIntroducido, out double porcentaje))
                {

                    double porcentajeProducto = precioProducto * (porcentaje / 100);


                    WriteLine($"Al aplicar un {porcentaje}% de descuento el precio final del producto es de {precioProducto - porcentajeProducto} " +
                        $"euros y por lo tanto se ahorra {porcentajeProducto} euros.");
                    ReadLine();
                    break;
                }
                else
                {
                    WriteLine("Error al introducir el porcentaje del descuento ");
                    ReadLine();
                }

            }
            else
            {
                WriteLine("Error al introducir el precio del producto ");
                ReadLine();
            }
        } while (true);
    }
}