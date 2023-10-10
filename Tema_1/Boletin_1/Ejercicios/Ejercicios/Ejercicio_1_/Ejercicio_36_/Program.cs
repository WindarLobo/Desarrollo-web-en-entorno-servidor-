using static System.Console;
namespace Ejercicio_36_;

public class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que muestre un menú donde las opciones sean “Equilátero”,
         * “Isósceles” y “Escaleno”, pida una opción y calcule el perímetro del triángulo seleccionado.*/


        WriteLine("Menu:\n1.- Equilátero\n2.- Isósceles \n3.-Escaleno");
        string usuario1 = ReadLine();
        if (int.TryParse(usuario1, out int opciones))
        {
            double lado1, lado2, lado3, perimetro;


            switch (opciones)
            {
                case 1:
                    WriteLine("Por favor, ingresa la longitud del lado 1:");
                    string usuario2 = ReadLine();
                    if (double.TryParse(usuario2, out lado1))
                    {
                        perimetro = 3 * lado1;
                        WriteLine($"El perímetro del triángulo equilátero es: {perimetro}");
                    }
                    else
                    {
                        WriteLine($"No se puede calcular el equilatero pq tiene q ser un numero ");
                    }

                    break;


                case 2:
                    WriteLine("Por favor, ingresa la longitud del lado 1:");
                    string usuario3 = ReadLine();
                    if (double.TryParse(usuario3, out lado1))
                    {

                        WriteLine("Por favor, ingresa la longitud del lado 2:");
                        string usuario4 = ReadLine();
                        if (double.TryParse(usuario4, out lado2))
                        {

                            perimetro = 2 * lado1 * lado2;
                            WriteLine($"El perímetro del triángulo Isósceles es: {perimetro}");
                        }
                        else
                        {
                            WriteLine($"Error al introducir el lado1 ");
                        }

                    }
                    else
                    {
                        WriteLine($"Error al introducir el lado2 ");
                    }
                    break;

                case 3:

                    WriteLine("Por favor, ingresa la longitud del lado1:");
                    string usuario5 = ReadLine();
                    if (double.TryParse(usuario5, out lado1))
                    {
                        WriteLine("Por favor, ingresa la longitud del lado2:");
                        string usuario6 = ReadLine();
                        if (double.TryParse(usuario6, out lado2))
                        {

                            WriteLine("Por favor, ingresa la longitud del tercer lado3:");
                            string usuario7 = ReadLine();
                            if (double.TryParse(usuario7, out lado3))
                            {
                                perimetro = lado1 + lado2 + lado3;
                                WriteLine($"El perímetro del triángulo escaleno es: {perimetro}");

                            }
                            else
                            {
                                WriteLine($"Error al introducir el lado3 ");
                            }
                        }
                        else
                        {
                            WriteLine($"Error al introducir el lado2 ");
                        }
                    }
                    else
                    {
                        WriteLine($"Error al introducir el lado1 ");
                    }

                    break;


                default:
                    WriteLine("El número ingresado no está entre las opciones .");
                    break;
            }
            ReadLine();
        }
    }

}

