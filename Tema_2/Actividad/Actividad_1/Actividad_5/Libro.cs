using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Actividad_5
{
    protected class Libro : Articulo
    {
        private string autor;

        public Libro(string autor)
        {
            this.autor = autor;
        }
        public string Autor { get => autor; set => autor = value; }

        public Articulo(string titulo, string precio) : base(titulo, precio)
        {
        }
    }

}
