using static System.Console;
namespace Actividad_Trece;

internal class Program
{
    static void Main(string[] args)
    {
        /*Crea un programa en C# que permita al usuario ingresar una cantidad variable
         de números enteros, los guarde en una lista, ordene los elementos de la lista de
         menor a mayor con el método Sort y finalmente muestre la lista de números en
        orden inverso con el método Reverse.*/



        do
        {
            WriteLine("Cuanto elemento quieres tener tu array");
            string lis = ReadLine();
            if (int.TryParse(lis, out int tamañoArrays) && tamañoArrays > 0)
            {

                List<int> miLista = new List<int>();

                for (int i = 0; i < tamañoArrays; i++)
                {
                    Write($"Ingrese el elemento {i + 1}: ");
                    string arreglo = ReadLine();

                    if (int.TryParse(arreglo, out int elemento) && elemento > 0)
                    {
                        miLista.Add(elemento);

                    }
                    else
                    {
                        WriteLine("Error al introducir : Tiene q ser un numero entero.");
                        ReadLine();
                        i--;
                    }

                }

                WriteLine("Ordena de  menor a mayor : ");
                ordenMeorMayor(miLista);
                ReadLine();

                WriteLine("Ordena en orden contrario");
                ordenContrario(miLista);
                break;
            }

            else
            {
                WriteLine("Error al introducir el numero : Tiene q ser numero entero positivo ");
                ReadLine();
            }
        } while (true);

    }
    private static void ordenMeorMayor(List<int> miLista)
    {
        miLista.Sort();

        foreach (int item in miLista)
        {
            WriteLine(item);

        }

    }

    private static void ordenContrario(List<int> miLista)
    {
        miLista.Reverse();

        foreach (int item2 in miLista)
        {
            WriteLine(item2);

        }

    }
}