using System.Net.NetworkInformation;
using static System.Console;
namespace Ejercicio_29_;

public class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que pida una letra y detecte si es una vocal.*/

        do
        {
            WriteLine($"Introduce una letra :");

            char letra = ReadKey().KeyChar;


            if (esVocal(letra))
                {
                    WriteLine("\nEs una vocal");
                break;
                }
                else
                {
                    WriteLine("\nNo es una vocal");
                }

           
            
        }while (true);
        
    }

    private static bool esVocal(char letra)
        {

        letra = Char.ToLower(letra);
        if (letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u')
            {
                return true;
            }
            return false;
        }

    } 
