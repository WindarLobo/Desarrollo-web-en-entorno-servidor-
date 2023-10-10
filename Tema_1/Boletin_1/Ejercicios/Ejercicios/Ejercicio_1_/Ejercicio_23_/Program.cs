using static System.Console;
namespace Ejercicio_23_;

public class Program
{
    static void Main(string[] args)
    {

        /*Diseñar un programa que pida un número del 1 al 7 y diga el día de la semana correspondiente.*/


        WriteLine($"Introduce un numero del 1 al 7 : ");
        string usuario = ReadLine();
        if (int.TryParse(usuario, out int numero))
        {
            diaDeLaSemana(numero);


           
        }
    }

    private static int  diaDeLaSemana(int numero)
    {
        switch (numero)
        {

            case 1:
                WriteLine("Lunes");
                break;
            case 2:
                WriteLine("Martes");
                break;
            case 3:
                WriteLine("Miercoles");
                break;
            case 4:
                WriteLine("Jueves");
                break;
            case 5:
                WriteLine("Viernes");
                break;
            case 6:
                WriteLine("Sabado");
                break;

            case 7:
                WriteLine("Domingo");
                break;

            default:
                WriteLine("El número ingresado no está entre 1 y 7.");
                break;
        }
        return numero;
        

    }
}
