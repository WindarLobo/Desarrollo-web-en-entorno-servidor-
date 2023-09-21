using static System.Console;
namespace Actividad_Ocho;

internal class Program
{
    static void Main(string[] args)
    {
        /*Usando el bucle
          for , crea un programa que calcule la suma de los
         números impares desde 1 hasta un número ingresado por el usuario.
        Luego, muestra la suma en la consola.*/

        do
        {
            int suma = 0;
            WriteLine("Introduzca un numero ");
            string usuario = ReadLine();
            if (int.TryParse(usuario, out int numero))
            {
                suma += numero;

                for (int i = 1; i < numero; i += 2)
                {
                    suma += i;

                }
                WriteLine($"La suma de los numero imapres es : {suma}");
                ReadLine ();
            }
            else
            {
                WriteLine("\nError: debes de introducir un numero entero\n");
               
            }
        }while (true);
    }
}
