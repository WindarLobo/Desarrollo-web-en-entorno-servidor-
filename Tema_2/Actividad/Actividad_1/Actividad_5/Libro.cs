using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Actividad_5
{

    public class Libro : Articulo
    {
        private string autor;
        public Libro(string titulo, string precio,string autor) : base(titulo, precio)
        {
            this.Autor = autor;
        }

        public string Autor { get => autor; set => autor = value; }
    }

}
