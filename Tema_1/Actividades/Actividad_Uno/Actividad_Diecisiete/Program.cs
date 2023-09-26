using static System.Console;
namespace Actividad_Diecisiete;

internal class Program
{
    static void Main(string[] args)
    {
        /*Crea un programa en C# que rellene de forma aleatoria con numeros aleatorios
         entre 1 y 10 un array de n elementos.
         El tamaño del array se lo debemos pasar por pantalla.
          Comprueba en qué posiciones el array tiene elementos y en cual es nulo*/


        do
        {
            WriteLine("Introduce la cantidad de elemetos : ");
            string usuario = ReadLine();
            if (int.TryParse(usuario, out int numero))
            {

                int[] numerosEnteros = new int[numero];

                Random rand = new Random();

                for (int i = 0; i < numero; i++)
                {
                    int numerosAletorio = rand.Next(1, 11);

                    numerosEnteros[i] = numerosAletorio;
                }
                WriteLine("Arrays aletorio: ");

                for (int i = 0; i < numero; i++)
                {

                    WriteLine($"Elemento  : {i}");

                    if (numerosEnteros[i] != 0)
                    {
                        WriteLine(numerosEnteros[i]);

                    }
                    else
                    {

                        WriteLine("Es nulo");
                    }
                }
            }
            else
            {
                WriteLine("Error !!! : introduce un numero entero positivo.");
            }
        } while (true);


    }

}