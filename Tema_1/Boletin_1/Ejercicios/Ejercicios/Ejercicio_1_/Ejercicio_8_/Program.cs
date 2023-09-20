using static System.Console;
namespace Ejercicio_8_;

internal class Program
{
    static void Main(string[] args)
    {
        /*El programa deberá solicitar al usuario que introduzca dos datos de tipo double: 
          espacio en metros y tiempo en segundos. Con estos datos informará de la velocidad en metros por segundo según la mítica fórmula:
          Velocidad = espacio / tiempo
         El mensaje será: “La velocidad es de “ + velocidad + “metros/segundo”*/

        

        do
        {
            WriteLine("Introduce el espacio en metros: ");
            string metroIntroducido = ReadLine();
            if (double.TryParse(metroIntroducido, out double espacio))
            {
                WriteLine("Introduce el tiempo en segundos :");
                string tiempoIntroducido = ReadLine();
                if (double.TryParse(tiempoIntroducido, out double tiempo))
                {
                    WriteLine($"La velocidad es de { espacio / tiempo} metros/segundo");
                    ReadLine();
                    break;
                }
                else
                {
                    WriteLine("Error al introducir el tiempo en segundos ");
                    ReadLine();
                }
            }
            else
            {

                WriteLine("Error al introducir los espacio en metros ");
                ReadLine();
            }

        } while (true);
    }
}