using static System.Console;
namespace Actividad_Cinco;

internal class Program
{
    static void Main(string[] args)
    {
        /*Crea un programa que lea una calificación ingresada por el usuario (un número entre 0 y
        100) y determine su equivalente en letras, según la siguiente tabla:

       Si la calificación es mayor o igual a 90 se asigna la letra A "

       Si la calificación es mayor o igual a 80 y menor a 90 se asigna la letra B"

       Si la calificación es mayor o igual a 70 y menor a 80 se asigna la letra C"

       Si la calificación es mayor o igual a 60 y menor a 70 se asigna la letra D"

       Si la calificación es menor a 60 se asigna la letra F"*/
        do
        {

            WriteLine("Introduzca la calificacion del 0 al 100 : ");
            string datosUsuario = ReadLine();
            if (int.TryParse(datosUsuario, out int calificacion))
            {
                if (calificacion >= 0 && calificacion <= 100)
                {

                    char letra;
                    if (calificacion >= 90)
                    {
                        letra = 'A';

                    }
                    else if (calificacion >= 80 && calificacion < 90)
                    {
                        letra = 'B';
                    }
                    else if (calificacion >= 70 && calificacion < 80)
                    {
                        letra = 'C';
                    }
                    else if (calificacion >= 60 && calificacion < 70)
                    {
                        letra = 'D';
                    }
                    else
                    {
                        letra = 'F';
                    }

                    WriteLine($"La calificacion es : {calificacion} equivale a la letra : {letra} ");
                    ReadLine();
                    break;

                }

            }

            else
            {
                WriteLine("\nError al introducir la calificacion, tiene q ser un numero entero del 0 al 100");
                ReadLine();
            }
        } while (true);
    }
}