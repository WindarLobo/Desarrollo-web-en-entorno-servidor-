using static System.Console;
namespace Actividad_Diez;

internal class Program
{
    static void Main(string[] args)
    {
        /*Crea un programa que imprima los números del 1 al 10 en forma de pirámide
         Debemos usar la instrucción Console.Write() y Console.WriteLine()
         La salida debería ser la siguiente:*/
       
        int numero =10;

        for (int i = 1; i <= numero; i++)
        {

            for (int j = 1; j <= i; j++)
            {
              Write(j);
            }
           
            WriteLine();
        }
       
    }  

} 
