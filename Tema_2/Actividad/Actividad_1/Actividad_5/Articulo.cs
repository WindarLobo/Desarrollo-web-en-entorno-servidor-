﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Actividad_5
{
   public abstract  class Articulo
    {
        private string titulo;
        private string precio;

        public  Articulo(string titulo, string precio)
        {
            this.titulo = titulo;
            this.precio = precio;
        }
        protected void MostrarArticulo()
        {
            Console.WriteLine(titulo);
        }


    }

}
