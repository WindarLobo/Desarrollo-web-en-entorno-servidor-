using static System.Console;
namespace Actividad_DieciOcho;

internal class Program
{
    static void Main(string[] args)
    {
        /* desarrolla un método que reciba un entero,
       calcule su cuadrado y lo muestre por pantalla de la siguiente forma:

       El número recibido ha sido: [numero]

      El cuadrado de [numero] es [numero]^2 */

        do
        {
            WriteLine("Introduzca el lado de un cuadrado: ");
            string ladoIntroducido = ReadLine();
            if (int.TryParse(ladoIntroducido, out int ladoCuadrado))
            {
                if (ladoCuadrado > 0)
                {
                    calculoCuadrado(ladoCuadrado);
                    break;
                }
                else
                {
                    WriteLine("Error : debes de introducir un numero positivo");
                }
            
            }
            else
            {
                WriteLine("Error : introduce un numero entero");
                
            }
        }while (true);
    }

    private static void  calculoCuadrado(int numero)
    {
       
        WriteLine($"El número recibido ha sido: {numero}");
        WriteLine($"El cuadrado de {numero} es  {numero*numero}");

    }
}