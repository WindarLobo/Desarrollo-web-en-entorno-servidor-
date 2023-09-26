using System.Diagnostics.CodeAnalysis;
using static System.Console;
namespace Activida_Quince;

internal class Program
{
    static void Main(string[] args)
    {
        int suma = 0;
        /*Crea un programa en C# que realice lo siguiente:
        1. Define un array de 10 números enteros.
        2. Rellena el array con números aleatorios entre 1 y 100.
        3. Imprime en la consola cada número en el array utilizando un bucle
         foreach
        4. Calcula y muestra en la consola la suma de todos los números en el array.
        5. Determina y muestra en la consola el número más grande y el más pequeño
        en el array*/

        int[] numerosEnteros = new int[10];
        Random rand = new Random();
        for (int i = 0; i < numerosEnteros.Length; i++)
        {
            numerosEnteros[i] = rand.Next(1, 100 + 1);
        }
        foreach (int i in numerosEnteros)
        {
            Write(i+",");


        }
        foreach (int i in numerosEnteros)
        {
            suma += i;


        }
        ReadLine();
        WriteLine($"La suma es : {suma}");

        //Array.Sort(numerosEnteros);
        //WriteLine($"El numero mas pequeño {numerosEnteros[0]}");
        //WriteLine($"El numero mas grande {numerosEnteros[numerosEnteros.Length-1]}");

        WriteLine($"El numero mas pequeño {numerosEnteros.Min()}");
        WriteLine($"El numero mas grande {numerosEnteros.Max()}");

    }

}