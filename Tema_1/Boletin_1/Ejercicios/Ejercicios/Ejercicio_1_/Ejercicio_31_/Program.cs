using static System.Console;
namespace Ejercicio_31_;

public class Program
{
    static void Main(string[] args)
    {
        /*Diseñar un programa que muestre un menú que contemple las opciones “Archivo”, “Buscar” y “Salir”,
         * en caso de que no se introduzca una opción correcta se notificará por pantalla.*/

        do
        {
            WriteLine($"Menu:\n1.- Archivo\n2.- Buscar \n3.-Salir");
            string usuario1 = ReadLine();
            if (int.TryParse(usuario1, out int numero))
            {
                menu(numero);
                break;

            }
            else
            {
                WriteLine("Error al introducir un numero para el menu");
            }

        }while(true);
    }
    private static int menu(int numero)
    {
        switch (numero)
        {

            case 1:
                WriteLine("Has seleccionado 'Archivo' ");
                break;
            case 2:
                WriteLine(" Has seleccionado 'Buscar' ");
                break;
            case 3:
                WriteLine("Has seleccionado 'Salir' ");
                break;
           
            default:
                WriteLine("El número ingresado no está entre las opciones .");
                break;
        }
        return numero;


    }


}