using static System.Console;
namespace Ejercicio_40_;

public class Program
{
    static void Main(string[] args)
    {
        /*1.	Escribe los bucles necesarios para generar las siguientes salidas:
          a)   1,3,5,7,9,11
          b)   2,4,6,8,10
          c)	5,10,15,20,25
           d)   100 90 80 70 60 50
            */

        // ejercicioA();
        //ejercicioB();
        // ejercicioC();
        ejercicioD();

    }

    private static void ejercicioA()
    {
        for (int i = 1; i < 12; i += 2)
        {

            WriteLine(i);

        }
        ReadLine();
    }
        private static void ejercicioB()
        {
            for (int i = 2; i < 11; i += 2)
            {

                WriteLine(i);

            }
            ReadLine();
        }

    private static void ejercicioC()
    {
        for (int i = 5; i < 26; i += 5)
        {

            WriteLine(i);

        }
        ReadLine();
    }
    private static void ejercicioD()
    {
        for (int i = 100; i > 40; i -= 10)
        {

            WriteLine(i);

        }
        ReadLine();
    }
}