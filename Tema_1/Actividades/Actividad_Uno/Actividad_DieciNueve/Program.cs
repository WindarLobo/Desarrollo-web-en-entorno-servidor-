using System.Linq;
using System.Text;
using static System.Console;
namespace Actividad_DieciNueve;

internal class Program
{
    static void Main(string[] args)
    {
        /*Desarrolla un método llamado
         GeneradorPassSuperSeguras():
         Para eso, deberá crear claves con:  
        1 letra mayúscula
        Entre 6 y 8 dígitos aleatorios
        1 símbolo
        2 letras minúsculas*/


        WriteLine($"Contraseña :  {GeneradorPassSuperSeguras()}");
        ReadLine();
    }

    private static string GeneradorPassSuperSeguras()
    {
        Random random = new Random();
        string letrasMayusculas = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        string letrasMinusculas = "abcdefghijklmnopqrstuvwxyz";
        string simbolos = "!@#$%^&*()_+-=[]{}|;:,.<>?";

        char letraMayuscula = letrasMayusculas[random.Next(letrasMayusculas.Length)];

        string digitos = string.Empty;
        int longitudDigitos = random.Next(6, 9);

        for (int i = 0; i < longitudDigitos; i++)
        {
            digitos += random.Next(10);

        }
        char simbolo = simbolos[random.Next(simbolos.Length)];

        string  letraMinuscula = string.Empty;
        for (int i = 0; i < 2; i++)
        {
            letraMinuscula += letrasMinusculas[random.Next(letrasMinusculas.Length)];

        }

        string password = letraMayuscula.ToString() + digitos.ToString() + simbolo.ToString() + letraMinuscula.ToString() ;

        return password;
    }
}
