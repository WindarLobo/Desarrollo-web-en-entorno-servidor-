using static System.Console;
namespace Actividad_Once;

internal class Program
{
    static void Main(string[] args)
    {
        /*Crea un programa que pida al usuario ingresar una tabla de multiplicación y luego muestre
           la tabla completa.
           Por ejemplo, si el usuario ingresa 5, la salida debería ser la siguiente:*/
        long tablaDeMultiplicar = 1;

        do
        {
            WriteLine("ingresar una tabla de multiplicación");
            string ususuario = ReadLine();
            if (long.TryParse(ususuario, out long numero))
            {



                for (long i = 1; i <= 10; i++)
                {
                    WriteLine($" {numero} X {i} = {numero * i}");

                }
                ReadLine();
                break;
            }
            else
            {
                WriteLine("Error: Debes de introducir un numero entero para mostrar  la tabla de multiplicar \n");
                ReadLine();
            }
        }while (true);
    }
}