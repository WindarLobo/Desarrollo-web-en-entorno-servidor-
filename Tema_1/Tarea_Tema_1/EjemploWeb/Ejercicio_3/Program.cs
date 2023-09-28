using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Console;
using static System.Array;
namespace Ejercicio_3
{
	public class Program
	{
		static void Main(string[] args)
		{
			/*Hacer un programa que inicialice una matriz de números con valores aleatorios,
            y ordene los elementos de menor a mayor. Después, muéstralos por pantalla con
            un Foreach*/


			Random random = new Random();

			int numeroLongitud = random.Next(1, 10);

			int[] Array = new int[numeroLongitud];

			for (int i = 0; i < Array.Length; i++)
			{
				Array[i] = random.Next(1, 101);
			}

			Sort(Array);

			WriteLine("Array ordenados de menor a mayor:");
			foreach (int nuemro in Array)
			{
				WriteLine(nuemro);
			}
			ReadLine();

		}

	}
}
