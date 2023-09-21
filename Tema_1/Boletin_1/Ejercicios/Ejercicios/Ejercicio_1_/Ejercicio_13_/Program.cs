using static System.Console;
namespace Ejercicio_13_;

internal class Program
{
    static void Main(string[] args)
    {
        int a=0, b=0, c=0, d=0;
        int menor=0;

        if (a > b)
        {
            menor = b;

        }
        else
        {
            menor = a;
        }
            if (menor > c)
            {
                menor = c;
            }
        
            else
            {
                if(menor>d)
                {
                    menor = d;
                }
                else
                {
                    WriteLine(menor);
                }

            }
           ReadLine();
        }
          

    }
