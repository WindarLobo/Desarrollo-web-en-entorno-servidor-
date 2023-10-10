using System;
using static System.Console;
namespace Ejercicio_19;

public class Program
{
    static void Main(string[] args)
    {
        /*Debido al sobrepeso Homer tiene que realizar su actividad laboral desde casa, 
         * para ello la central necesita realizar un programa que lo ayude a gestionar la seguridad de la central.
         * Esta aplicación medirá la presión y la temperatura del núcleo. Si la presión es superior a 2 atm debe mostrar el mensaje “Abrir válvula de seguridad”.
         * Si la temperatura supera los 500 Kelvin el mensaje debe ser “Reducir la temperatura. 
         * Si suceden ambas situaciones debe mostrar ambos mensajes. Si no debe aparecer “Todo en orden”.*/

        double presion = MedirPresion();
        double temperatura = MedirTemperatura();

        WriteLine($"La precion es : {presion} atm");
        WriteLine($"La Temperatura  es : {temperatura} Kelvin");

        if (presion > 2 && temperatura > 500)
        {
            WriteLine("Abrir válvula de seguridad");
            WriteLine("Reducir la temperatura");
        }
        else if (presion > 2)
        {
        WriteLine("Abrir válvula de seguridad");
        }
        else if (temperatura > 500)
        {
            WriteLine("Reducir la temperatura");
        }

        else
        {
            WriteLine("Todo en orden");
        }

    }


    public static double MedirPresion()
    {
       
        Random random = new Random();
        return random.NextDouble() * 3;
    }


    // Clase para medir la temperatura

    public static double MedirTemperatura()
    {
        
        Random random = new Random();
        return random.NextDouble() * 1000; 
    }
}

