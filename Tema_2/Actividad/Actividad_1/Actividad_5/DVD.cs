using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Actividad_5
{
    protected class DVD : Articulo
    {
      
        private int  duracion;

      
        public string Duracion { get => duracion; set => duracion = value; }
        public DVD(int duracion)
        {
            this.duracion = duracion;
        }


        public Libro(string titulo, string precio) : base(titulo, precio)
        {
        }
    }


}
