using static System.Console;
namespace Ejercicio_5_;

internal class Program
{
    const double R = 0.082;
    static void Main(string[] args)
    {
        /*La fórmula de los gases ideales es: pv = nRT ,en donde :
        P: es la presión en atmósferas.
        V: es el volumen en litros.
        n: es el número de moles.
        R: Es una constante que vale 0.082
        T: Es la temperatura en Kelvin
        Crear un programa que lea por teclado el volumen, el número de moles, y la temperatura y calcule la presión, 
        informando al usuario con el siguiente mensaje:
         “Con un volumen de V litros ,y una temperatura de T kelvin,
        n moles de un gas ideal tienen una presión de P atmósferas”*/
        do
        {
            WriteLine("Ingrese el volumen en litros:");
            string v = ReadLine();
            if (double.TryParse(v, out double volumen))
            {
                WriteLine("Ingrese el numero de moles;");
                string m = ReadLine();
                if (double.TryParse(m, out double moles))
                {
                    WriteLine("Ingrese la temperatura en Kelvin:");
                    string t = ReadLine();
                    if (double.TryParse(t, out double temperatura))
                    {

                        double presion = (moles * R * temperatura) / volumen;
                        WriteLine($"Con un volumen de {volumen} litros ,y una temperatura {temperatura}  kelvin,\r\n " +
                            $" {moles} moles de un gas ideal tienen una presión de {presion} atmósferas");
                        ReadLine();
                        break;
                    }
                    else
                    {
                        WriteLine("Error al introducir la temperatura en kelvin");
                    }
                }
                else
                {
                    WriteLine("Error al introducir el numero de moles");
                }

            }
            else
            {
                WriteLine("Error al introducir el volumen en litros");
            }
        } while (true);
    }
}