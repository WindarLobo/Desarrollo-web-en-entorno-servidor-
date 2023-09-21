using static System.Console;
namespace Actividad_Doce;

internal class Program
{
    static void Main(string[] args)
    {
        /*Crea un array
           notasAlumnos con las notas del último examen:
           {5, 8, 9, 4.6, 7, 6, 2.9, 10}
            Crea otro array
                copiaNotas y cópialo.
           Compara los dos arrays y di si son iguales o no.
           Por último, muestra los dos por pantalla*/

        float[] notasAlumnos = new float[] { 5, 8, 9, 4.6f, 7, 6, 2.9f, 10 };
        float[] copiaNotas = new float[] { 5, 8, 9, 4.6f, 7, 6, 2.9f, 10 };
        long elementosDistintos = 0;
        //Comparamos elemento a elemento
        for (long i = 0; i < notasAlumnos.Length; i++)
        {
            if (notasAlumnos[i] != copiaNotas[i])
            {
                elementosDistintos++;

                break;
            }
        }
        if (elementosDistintos == 0)
        {

            WriteLine("Son iguales");
        }
        else
        {
            WriteLine("Son distintos");
        }
        Write("\nNotas del último examen :\n");
        for (long i = 0; i < notasAlumnos.Length; i++)
        {
            Write($"{notasAlumnos[i]} ");


        }
        ReadLine();
        Write("\nCopia de las notas del último examen :\n");
        for (long x = 0; x < copiaNotas.Length; x++)
        {
            Write($"{copiaNotas[x]} ");

        }
        ReadLine();


    }
}