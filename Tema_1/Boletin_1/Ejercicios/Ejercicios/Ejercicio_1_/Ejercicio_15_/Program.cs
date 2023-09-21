using static System.Console;


namespace Ejercicio_15_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Escribir un programa que lea tres números y muestre por pantalla la media aritmética. 
         * Si la media es superior a 5 mandará un mensaje de “Alumno aprobado”.
         * En cualquier otro caso el mensaje indica: “Alumno suspenso”.*/


        int numero = 3;
        int suma = 0;

        do
        {
            for (int i = 1; i <= numero; i++)
            {
                WriteLine($"Intrpduzca {i} numero ");
                string usuario = ReadLine();
                if (int.TryParse(usuario, out int numeroTotal))
                {
                    suma += numeroTotal;
                }
                else
                {
                    WriteLine("Error : Introduce un numero entero para calcular la media \n");
                    i--;
                }
            }
            float media = (float)suma / numero;

            if (media >= 5)
            {
                WriteLine($"Alumno aprobado con una media de : {media}");
                ReadLine();
                break;


            }
            else
            {
                WriteLine($"Alumno suspenso con una media de : {media}");
                ReadLine();
                break;
            }

        } while (true);
    }
}