using static System.Console;
namespace Actividad_Dieciseis;

internal class Program
{
    static void Main(string[] args)
    {
        /*Crea un programa en C# que permita al usuario ingresar una cantidad variable
         de nombres, los guarde en una lista y los muestre en pantalla utilizando un bucle
        foreach*/

        List<string> listaDeNombres = new List<string>();

        do
        {

            WriteLine("Introduce un nombre :");
            string nombreIntroducido = ReadLine();

            if (nombreIntroducido.ToLower() == "salir")

                break;

            listaDeNombres.Add(nombreIntroducido);

        } while (true);

        WriteLine("\nLos nombres  de la lista son : \n");
        foreach (string lista in listaDeNombres)
        {
            WriteLine(lista);
        }
        ReadLine();
    }
}