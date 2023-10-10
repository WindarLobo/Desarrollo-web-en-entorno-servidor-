using static System.Console;
namespace Ejercicio_22_;

public class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que pida un número del 1 al 5 y diga si es primo o no.*/

      
            WriteLine($"Introduce el  numero del 1 al 5 : ");
            string usuario = ReadLine();
            if (int.TryParse(usuario, out int numero))
        {
        
            if (EsPrimo(numero))
                {
                    WriteLine("Es primero");
                }
                else
                {
                    WriteLine("No es primo");
                }

            }
        
    }

   private  static bool EsPrimo(int numero)
    {
        for (int i = 2; i < numero; i++)
        {
            if ((numero % i) == 0)
            {
                
                return false;
            }
        }

    
        return true;
    }
}