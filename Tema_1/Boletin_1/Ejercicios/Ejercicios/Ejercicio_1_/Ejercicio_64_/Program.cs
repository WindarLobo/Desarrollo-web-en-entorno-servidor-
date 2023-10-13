using static System.Console;
namespace Ejercicio_64_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Programar el juego de adivina el número. Para ello el programa genera un número aleatorio y el usuario debe de acertar de que número se trata.
        Existen 3 niveles:
	        Nivel 1: El número generado está entre 1 y 15. El usuario tiene 3 intentos.
	        Nivel 2: Número generado entre 1 y 30 . El usuario tiene 4 intentos.
	        Nivel 3: Número generado entre 1 y 50. El usuario tiene 6 intentos.*/

        Random rando = new Random();
        nivelUno( rando);
       
    }
       
    private static void nivelUno(Random rando)
    {
            int numeroAletorio = rando.Next(1, 16);
            int intentos = 3;
            WriteLine("¡Bienvenido al juego de Adivina el Número Nivel 1 !");
            WriteLine("Estoy pensando en un número entre 1 y 15. Tienes 3 intentos para adivinarlo.");

            while (intentos > 0)
            {
                Write("Ingresa tu suposición: ");
                int suposicion;
                if (int.TryParse(ReadLine(), out suposicion))
                {
                    if (suposicion == numeroAletorio)
                    {
                        WriteLine("¡Felicidades! ¡Has adivinado el número correctamente!");
                        nivelDos(rando);
                        break;
                    }
                    else
                    {
                        intentos--;
                        if (intentos > 0)
                        {
                            WriteLine("Incorrecto. Te quedan " + intentos + " intentos.");
                        }
                        else
                        {
                            WriteLine("Lo siento, has agotado tus intentos. El número correcto era: " + numeroAletorio);
                        }
                    }
                }
                else
                {
                    WriteLine("Por favor, ingresa un número válido.");
                }
            }

            WriteLine("Gracias por jugar. ¡Hasta la próxima!");

        }

    private static void nivelDos(Random rando)
    {
        int numeroAletorio = rando.Next(1, 31);
        int intentos = 4;
        WriteLine("¡Bienvenido al Nivel 2 !");
        WriteLine("Estoy pensando en un número entre 1 y 30. Tienes 4 intentos para adivinarlo.");

        while (intentos > 0)
        {
            Write("Ingresa tu suposición: ");
            int suposicion;
            if (int.TryParse(ReadLine(), out suposicion))
            {
                if (suposicion == numeroAletorio)
                {
                    WriteLine("¡Felicidades! ¡Has adivinado el número correctamente!");
                    nivelTres(rando);
                    break;
                }
                else
                {
                    intentos--;
                    if (intentos > 0)
                    {
                        WriteLine("Incorrecto. Te quedan " + intentos + " intentos.");
                    }
                    else
                    {
                        WriteLine("Lo siento, has agotado tus intentos. El número correcto era: " + numeroAletorio);
                    }
                }
            }
            else
            {
                WriteLine("Por favor, ingresa un número válido.");
            }
        }

      
    }
    
        private static void nivelTres(Random rando)
    {
        int numeroAletorio = rando.Next(1, 51);
        int intentos = 6;
        WriteLine("¡Bienvenido al Nivel 3 !");
        WriteLine("Estoy pensando en un número entre 1 y 50. Tienes 4 intentos para adivinarlo.");

        while (intentos > 0)
        {
            Write("Ingresa tu suposición: ");
            int suposicion;
            if (int.TryParse(ReadLine(), out suposicion))
            {
                if (suposicion == numeroAletorio)
                {
                    WriteLine("¡Felicidades! ¡Has adivinado el número correctamente!");
                    break;
                }
                else
                {
                    intentos--;
                    if (intentos > 0)
                    {
                        WriteLine("Incorrecto. Te quedan " + intentos + " intentos.");
                    }
                    else
                    {
                        WriteLine("Lo siento, has agotado tus intentos. El número correcto era: " + numeroAletorio);
                    }
                }
            }
            else
            {
                WriteLine("Por favor, ingresa un número válido.");
            }
        }

       

    }
}
