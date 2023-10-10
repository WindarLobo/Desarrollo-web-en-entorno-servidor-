using static System.Console;
namespace Ejercicio_21_;

public class Program
{


    static void Main(string[] args)
    {
        /*Diseñar un programa que aplique un descuento del 10% si el precio de un producto es inferior a 100 y del 15% si es superior.*/


        do
        {
            double descuento1 = 0.10, descuento2 = 0.15;
            WriteLine("Introduce el precio del producto : ");
            string usuario = ReadLine();
            if (double.TryParse(usuario, out double precioProducto))
            {
                if (precioProducto < 100)
                {

                    double descuento = precioProducto * descuento1;
                    double descuentoTotal = precioProducto - descuento;
                    WriteLine($"El precio original  {precioProducto} Euros se le aplica un {descuento1} % y el total al pagar es {descuentoTotal} Eruros");
                    break;

                }
                else
                {
                    double descuento = precioProducto * descuento2;
                    double descuentoTotal = precioProducto - descuento;
                    WriteLine($"El precio original {precioProducto} Eruros  se le aplica un {descuento2} % y el total al pagar es {descuentoTotal} Eruros");
                    break;
                }


            }
            else
            {
                WriteLine("Error al introducir el precio del producto");
            }
        } while (true);


        ReadLine();
    }
}