using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Actividad_5
{
    public abstract class Articulo
    {
        private string titulo;
        private string precio;

        public Articulo(string titulo, string precio)
        {
            this.titulo = titulo;
            this.precio = precio;
        }

        public string Titulo { get => titulo; set => titulo = value; }
        public string Precio { get => precio; set => precio = value; }

    }

}
