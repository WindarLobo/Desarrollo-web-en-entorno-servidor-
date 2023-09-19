using static System.Console;
namespace Ejercicio_1_;

internal class Program
{
    
    static void Main(string[] args)

    {

        /*El programa debe solicitar al usuario que ingrese un número. Este número es recogido en una variable de tipo Double llamada radio.
         A continuación, se debe calcular en sendas variables, la longitud del círculo, 
        el área y el volumen de la esfera. Para ello haced uso de una constante de tipo double denominada PI cuyo valor es 3.141516.
          Longitud = 2*PI*radio.
          Area = PI*radio2
          Volumen = (4/3)*PI*radio3*/

        do
        {
            WriteLine("Ingrese el radio del circulo:");
            string numeroIngresado = ReadLine();
            if (double.TryParse(numeroIngresado, out double radio))
            {
                double longitud = 2 * Math.PI * radio;
                double area = 2 * Math.PI * Math.Pow(radio, 2);
                double volumen = (4 / 3) * Math.PI * Math.Pow(radio, 3);

                WriteLine($"La longitud es: {longitud}");
                WriteLine($"El area es: {area}");
                WriteLine($"el volumen es: {volumen}");
                ReadLine();
            }
            else
            {
                WriteLine("Error al introducir un nuemro");
            }
        }while (true);
    }
}