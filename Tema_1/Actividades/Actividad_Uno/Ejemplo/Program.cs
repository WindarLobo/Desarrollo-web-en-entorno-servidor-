using static System.Console;
namespace Ejemplo;

internal class Program
{

    static void Main(string[] args)
    {
        double v1 = 4;
        char tipo_op = '-';
        if (calcular(tipo_op, v1, 3) != System.Double.MaxValue) System.Console.WriteLine("{0} {1} {2}", v1, tipo_op, 3, calcular(tipo_op, v1, 3));
        else WriteLine("La operacion no es valida");
        ReadLine();

    }
    public static double calcular(char c, double op1, double op2)
    {
        if (c == '+')
            return op1 + op2;
        if (c == '-')
            return op1 + op2;
        else
            return System.Double.MaxValue;


    }
}