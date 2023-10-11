using static System.Console;
namespace Ejercicio_59_
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /* 1	2	3	4	5 6 7
               1	2	3	4	5 6
               1	2	3	4	5
               1	2	3	4	
               1	2	3		
               1	2		
               1		*/



            for (int i = 7; i>=1; i--)
            {
            

                for (int j = 1; j <= i; j++)
                {
                    Write(j);

                }

              WriteLine();
            }
            ReadLine();
        }
      
        
    
    }
}