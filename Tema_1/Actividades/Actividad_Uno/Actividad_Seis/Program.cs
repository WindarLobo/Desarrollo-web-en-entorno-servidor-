
using static System.Console;
namespace Actividad_Seis;

internal class Program
{
    static void Main(string[] args)
    {
        /*Utilizando la estructura
         switch , crea un programa que lea un número del 1 al 7
        ingresado por el usuario y determine el día de la semana correspondiente.
       Luego, muestra el día de la semana en la consola.*/

        int dia;
        do
        {
            WriteLine("Introduzca un numero del 1 al 7, para determinar el dia de la semana");
            string usuario = ReadLine();
            if (int.TryParse(usuario, out dia))
            {
                if (dia >= 1 && dia <= 7)
                {
                    switch (dia)
                    {
                        case 1:
                            WriteLine("Lunes");
                            break;
                        case 2:
                            WriteLine("Martes");
                            break;
                        case 3:
                            WriteLine("Miercoles");
                            break;
                        case 4:
                            WriteLine("Jueves");
                            break;
                        case 5:
                            WriteLine("Viernes");
                            break;
                        case 6:
                            WriteLine("Sabado");
                            break;


                        case 7:
                            WriteLine("Domingo");
                            break;
                    }
                    WriteLine("Fin del programa");
                    ReadLine();
                    break;


                }
                else
                {
                    WriteLine("Error: el numero tiene q ser del 1 al 7");
                    ReadLine();
                }
            }
            else
            {
                WriteLine("Error:  tiene que ser un numero entero");
                ReadLine();
            }

        } while (true);


    }

}