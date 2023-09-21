using static System.Console;
namespace Actividad_Dos;

internal class Program
{
    static void Main(string[] args)
    {
        /*Crea un programa donde ingreses
        5 números por pantalla y muestres su
        promedio.
        ¿Debemos usar conversión implícita o explícita?
         Controla qué pasaría si introducimos una letra.*/


        float numero;
        float promedio;
        float i = 0;
        float suma = 0;
        do
        {
            WriteLine("Introduce un  numero");
            string usuario = Console.ReadLine();

            if (float.TryParse(usuario, out numero))
            {
                i++;
                suma += numero;
            }
            else
            {
                WriteLine("Error al introducir");
            }

        } while (i < 5);


        promedio = suma / 5;

        WriteLine($"El promedio es: {promedio}");
        ReadKey();

    }

}