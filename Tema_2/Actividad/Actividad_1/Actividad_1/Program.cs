using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Actividad_1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Persona profe1= new Persona();
            profe1.enviarCorreo("Correo 1");
            Persona profe2= new Persona();
            Persona profe3= new Persona();
            Console.ReadLine();
        }
    }
}
