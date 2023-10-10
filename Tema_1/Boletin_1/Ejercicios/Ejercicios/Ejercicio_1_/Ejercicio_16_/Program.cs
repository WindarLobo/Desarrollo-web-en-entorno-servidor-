using static System.Console;
namespace Ejercicio_16_;

public class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que lea (es decir solicita al usuario que los introduzca por teclado) dos números reales, 
         * los guarde en dos variables de tipo double calcule su suma guardándola en una variable, 
         * SI ES POSITIVA mostrar por pantalla la raíz cuadrada de la suma (usar la clase Math.sqrt(variable)),
         * en cualquier otro caso muestra un mensaje informando de que no se puede calcular la raíz.
        */


        do
        {
            double suma = 0;
            for (int i = 1; i <= 2; i++)
            {
                WriteLine($"Introduzca el {i} numero");
                string numeroIntroducido = ReadLine();
                if (double.TryParse(numeroIntroducido, out double numero))
                {
                    suma += numero;
                                                                                       

                }

                else
                {
                    WriteLine("Error al introducir el numero");
                    i--;
                }



            }
            if (suma > 0)
            {
             
                WriteLine($"LA raiz cuadrara es : {Math.Sqrt(suma)}");
                break;
            }
            else
            {
                WriteLine("La suma no es positivo y no se puede calcular la raiz cuadrada");
            }
        } while (true);
    }
  
}