using static System.Console;
namespace Ejercicio_20_;

public class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que lea un número y si es múltiplo de 2 o de 3 mande un mensaje informando de tal situación, en caso de que no lo sea no hará nada.*/
        do
        {
            WriteLine("Introduzca un numero");
            string numeroUsuario = ReadLine();
            if (int.TryParse(numeroUsuario, out int numero))
            {
                if (numero % 2 == 0 || numero % 3 == 0)
                {
                    WriteLine("Es multiplo ");
                    break;

                }
                else
                {
                    WriteLine("No es multiplo");
                }

            }
            else
            {
                WriteLine("Error al introducir el  numero tiene q ser entero");
            }
        }while (true);

    }
}