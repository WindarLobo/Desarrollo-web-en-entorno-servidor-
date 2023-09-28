using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Console;
namespace Ejercicio_1
{
    internal class Program
    {
        public class Ejercicio1
        {
            static Random rando = new Random();

            static void Main(string[] args)
            {
                /*Escribe un programa que tenga un número aleatorio de notas obtenidas por un
                 alumno (comprendidas entre 0 y 10). Las notas deben ser aleatorias también.
                A continuación, debe mostrar todas las notas, la nota media, la nota más alta
                que ha sacado y la menor.*/


                double sumaNota = 0;

                int cantidaDeNota = rando.Next(0, 11);

                double[] notasAlumno = new double[cantidaDeNota];

                notasAletorio(cantidaDeNota, notasAlumno);
                ReadLine();

                foreach (double nota in notasAlumno)
                {
                    sumaNota += nota;

                }

                WriteLine($"Nota media:  {sumaNota / cantidaDeNota:F2}");
                WriteLine($"Nota más alta: {notasAlumno.Max():F2}");
                WriteLine($"Nota más baja: {notasAlumno.Min():F2}");
                ReadLine();
            }

            private static void notasAletorio(int cantidaDeNota, double[] notasAlumno)
            {
                for (int i = 0; i < cantidaDeNota; i++)
                {

                    notasAlumno[i] = rando.NextDouble() * 10;
                }

                WriteLine($"Las notas del alumno : \n");

                foreach (double nota in notasAlumno)
                {
                    WriteLine($"{nota:F2}");

                }
            }

        }
    }
}
