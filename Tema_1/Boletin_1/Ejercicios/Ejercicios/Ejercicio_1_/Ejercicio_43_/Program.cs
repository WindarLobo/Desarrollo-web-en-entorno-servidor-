using static System.Console;
namespace Ejercicio_43_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Muestra la tabla de multiplicar de un número introducido por teclado.*/

        WriteLine("Introduce un numero para mostrarte la tabla ");
        string usuario=ReadLine();
        if(int.TryParse(usuario, out int numero))
        {
            for(int i = 1; i < 11; i++)
            {
                WriteLine($"{numero} X {i} = {numero*i} ");
            }
        }
        
    }
}