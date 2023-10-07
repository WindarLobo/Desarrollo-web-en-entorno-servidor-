using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace Actividad_5
{
    public class Program
    {
        static void Main(string[] args)
        {
            Libro libro1 = new Libro("HP", "Caro", "Jk Rowling");
            DVD peli = new DVD("HP peli", "Barata", 128);


            Articulo pelicula;
            pelicula = new DVD("peli", "Caro", 222);


            CensurarArticulo(peli);
            CensurarArticulo(libro1);
            Console.ReadLine();

        }

        public static  void CensurarArticulo(Articulo articulo)
        {
            Console.WriteLine("Este articulo debe ser sensurado");

        }
    }
}
