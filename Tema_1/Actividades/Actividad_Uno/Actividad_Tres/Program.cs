using static System.Console;
namespace Actividad_Tres;

internal class Program
{
    static void Main(string[] args)
    {
        /*Crea un programa que lea un número ingresado por el usuario y determine si es
          un número par o impar. Luego, muestra el resultado en la consola.*/

        do
        {
            WriteLine("Introduce un numero");

            String usuario = ReadLine();
            if (int.TryParse(usuario, out int numero))
            {

                if (numero % 2 == 0)
                {
                    WriteLine("El numero " + numero + " es par");
                    ReadKey();
                    break;

                }


                else
                {
                    WriteLine("El nuemro " + numero + " es impar");
                    ReadKey();
                    break;


                }
            }
            else
            {
                WriteLine("Error al intrdocudir");
                ReadKey();
            }
        } while (true);
    }
}
