using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Actividad_5
{
   public   class DVD : Articulo
    {


        private int duracion; 

        public DVD(string titulo, string precio,int duracion) : base(titulo, precio)
        {
        }

        public int Duracion { get => duracion; set => duracion = value; }
    }


}
