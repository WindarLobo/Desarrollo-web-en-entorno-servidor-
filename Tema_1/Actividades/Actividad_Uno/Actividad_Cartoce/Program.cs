using static System.Console;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace Actividad_Cartoce;

internal class Program
{
    static void Main(string[] args)
    {
        /*Crea un programa en C# que permita al usuario ingresar una cantidad variable
       de números enteros, los guarde en una lista, ordene los elementos de la lista de
       menor a mayor con el método Sort , luego pida al usuario que ingrese un
       número a buscar en la lista y utilice el método BinarySearch para determinar si
       el número se encuentra en la lista y en qué posición.
      Finalmente, muestre un mensaje indicando si el número se encontró y en qué
       posición, o un mensaje de error si no se encontró.*/

        List<int> matriz = new List<int>();

        do
        {
            WriteLine("Introduce un numero entero positivo:");
            string usuario = ReadLine();
            if (int.TryParse(usuario, out int numerosEnteros))
            {

                if (numerosEnteros < 0)

                    break;

                matriz.Add(numerosEnteros);
            }

            else
            {
                WriteLine("Entrada inválida.");
            }
        } while (matriz.Count > 0);

        matriz.Sort();


        WriteLine("Introduce un numero entero positivo para determinar la posicion de la lista:");
        string usuario2 = ReadLine();
        if (int.TryParse(usuario2, out int busquedaNumero))
        {
            int posicion = matriz.BinarySearch(busquedaNumero);
            if (posicion >= 0)
            {
                WriteLine($"El número {busquedaNumero} se encuentra en la posición {posicion} de la lista.");
            }
            else
            {
                WriteLine($"El numero {busquedaNumero} no se encuentra en la lista");

            }

        }
        else
        {
            WriteLine("Debes de introducir un nuemro enteros positivo");
        }
        ReadLine();

    }
}

