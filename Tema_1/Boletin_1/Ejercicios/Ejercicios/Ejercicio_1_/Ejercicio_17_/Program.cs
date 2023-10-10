using static System.Console;
namespace Ejercicio_17_;

public class Program
{
    static void Main(string[] args)
    {
        /*Escribir un programa que solicite al usuario una contraseña que se guardará en una variable de tipo String.
     * El programa debe tener almacenada la contraseña previamente en otra variable. 
     * Si las dos contraseñas son iguales manda un mensaje diciendo que la contraseña es correcta en otro caso indica que no lo es.*/

        do
        {

            string contraseña = "Windar181993";

            WriteLine("Introduzca una contraseña");
            string UsuarioContraseña = ReadLine();

            if (UsuarioContraseña == contraseña)
            {

                WriteLine(" la contraseña es correcta");
                break;
            }
            else
            {
                WriteLine("Contraseña incorrecta");
            }
        } while (true);
    }
}