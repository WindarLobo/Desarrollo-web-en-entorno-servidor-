using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Console;
namespace Ejercicio_3
{
    public class Program
    {
        static void Main(string[] args)
        {
            /*Hacer un programa que inicialice una matriz de números con valores aleatorios,
            y ordene los elementos de menor a mayor. Después, muéstralos por pantalla con
            un Foreach*/


            do
            {
                WriteLine("Introduce un numero de fila");
                string filanumero = ReadLine();
                if (int.TryParse(filanumero, out int filas))
                {
                    if (filas > 0)
                    {
                        WriteLine("Introduce un numero de columna");
                        string columnanumero = ReadLine();
                        if (int.TryParse(columnanumero, out int columnas))
                        {
                            ReadLine();
                            if (columnas > 0)
                            {
                                int[,] matriz = new int[filas, columnas];
                                Random random = new Random();

                                for (int i = 0; i < filas; i++)
                                {
                                    for (int j = 0; j < columnas; j++)
                                    {
                                        matriz[i, j] = random.Next(1, 101);
                                        Write(matriz[i, j] + "\t");
                                    }

                                    ReadLine();

                                }

                                WriteLine("\nMatriz ordenada:");
                                ordenMenorMayor(matriz);
                                break;
                            }
                            else
                            {
                                WriteLine("Error !!!: introduce un numero positivo");
                            }

                        }
                        else
                        {
                            WriteLine("Error al introducir el numero en la  columna !!!! : Tiene q ser numero entero ");
                            ReadLine();
                        }
                    }
                    else
                    {
                        WriteLine("Error !!!: introduce un numero positivo");
                    }

                }

                else
                {
                    WriteLine("Error al introducir el numero en la  fila !!!: Tiene q ser numero entero ");
                    ReadLine();
                }
            } while (true);

        }

        private static void ordenMenorMayor(int[,] matriz)
        {
            int filas = matriz.GetLength(0);
            int columnas = matriz.GetLength(1);

            for (int i = 0; i < filas; i++)
            {
                for (int j = 0; j < columnas - 1; j++)
                {
                    for (int k = 0; k < columnas - j - 1; k++)
                    {
                        if (matriz[i, k] > matriz[i, k + 1])
                        {

                            int orden = matriz[i, k];
                            matriz[i, k] = matriz[i, k + 1];
                            matriz[i, k + 1] = orden;
                        }
                    }
                }

            }
            for (int i = 0; i < filas; i++)
            {
                for (int j = 0; j < columnas; j++)
                {
                    Write(matriz[i, j] + "\t");
                }
                ReadLine();
            }
        }
    }

}