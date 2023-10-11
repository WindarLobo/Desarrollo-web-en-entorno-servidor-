using static System.Console;
namespace Ejercicio_46_;

public class Program
{
    static void Main(string[] args)
    {
        /*Realizar un programa que calcule la suma de los m primeros números, 
         * siendo m un número no negativo que es introducido POR TECLADO por el usuario. 
         * El programa pedirá que el usuario introduzca un número hasta que un número positivo sea introducido,
         * si no repite el mensaje solicitando el dato.*/

        int m = 0;


        while (true)
        {
            WriteLine("Introduce un número positivo: ");


            if (int.TryParse(ReadLine(), out m) && m >= 0)
            {
                break;
            }
            else
            {
                WriteLine("Por favor, introduce un númeroque sea positivo.");
            }
        }

        int suma = 0;


        for (int i = 1; i <= m; i++)
        {
            suma += i;
        }


        WriteLine($"La suma de los primeros {m} números es: {suma}");

        ReadLine(); 
    }
}