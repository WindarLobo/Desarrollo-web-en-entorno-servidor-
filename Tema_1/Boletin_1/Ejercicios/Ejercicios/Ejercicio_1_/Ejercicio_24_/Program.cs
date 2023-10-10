using static System.Console;
namespace Ejercicio_24_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que pida un número del 1 al 12 y diga el nombre del mes correspondiente*/

        WriteLine($"Introduce un numero del 1 al 12 : ");
        string usuario = ReadLine();
        if (int.TryParse(usuario, out int numero))
        {
            calculoMes(numero);



        }
    }

    private static int calculoMes(int numero)
    {
        switch (numero)
        {

            case 1:
                WriteLine("Enero");
                break;
            case 2:
                WriteLine("Febrero");
                break;
            case 3:
                WriteLine("Marzo");
                break;
            case 4:
                WriteLine("Abril");
                break;
            case 5:
                WriteLine("Mayo");
                break;
            case 6:
                WriteLine("Junio");
                break;

            case 7:
                WriteLine("Julio");
                break;
            case 8:
                WriteLine("Agosto");
                break;
            case 9:
                WriteLine("Septimbre");
                break;
            case 10:
                WriteLine("Octubre");
                break;
            case 11:
                WriteLine("Noviembre");
                break;
            case 12:
                WriteLine("Diciembre");
                break;

            default:
                WriteLine("El número ingresado no está entre 1 y 12.");
                break;
        }
        return numero;


    }
}