namespace Ejercicio_42_;

public class Program
{
    static void Main(string[] args)
    {
        /*Muestra los números múltiplos de 5 y 7 entre 0 y 100 utilizando un bucle for.*/

        for(int i = 0; i <= 100; i++)
        {
            if(i%5==0 &&  i%7==0)
            {
                Console.WriteLine(i);
            }
        }
    }
}