﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Console;
namespace Actividad_Tres
{
    internal class Program
    {
        static void Main(string[] args)
        {
            do
            {
                WriteLine("Introduce un numero");

                String usuario = ReadLine();
                if (int.TryParse(usuario, out int numero))
                {

                    if (numero % 2 == 0)
                    {
                        WriteLine("El numero " + numero + " es par");
                        ReadKey();
                        break;

                    }
     

                    else
                    {
                        WriteLine("El nuemro " + numero + " no es par");
                        ReadKey();
                        break;


                    }
                }
                else
                {
                    WriteLine("Error al intrdocudir");
                    ReadKey();
                }
            }while (true);
        }
    }
}


