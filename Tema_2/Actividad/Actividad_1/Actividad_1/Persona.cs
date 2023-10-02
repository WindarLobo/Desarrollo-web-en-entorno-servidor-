using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace Actividad_1
{
    internal class Persona
    {
        private string nombre;
        private string apellido;
        private int edad;
        private string genero;
        private string direccion;
        private string email;

        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public int Edad { get => edad; set => edad = value; }
        public string Genero { get => genero; set => genero = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public string Email { get => email; set => email = value; }

        public Persona(string nombre, string apellido, int edad, string genero, string direccion, string email)
        {
            this.Nombre = nombre;
            this.Apellido = apellido;
            this.Edad = edad;
            this.Genero = genero;
            this.Direccion = direccion;
            this.Email = email;
        }
        public Persona() { 
        }

        public Persona(int edad, string direccion)
        {
            this.Edad = edad;
            this.Direccion = direccion;
        }

        public string Presentarse()
        {
            return "Mi nombre  nombre es" + Nombre;
        }
        public void enviarCorreo(string mensaje )
        {
        
           Console.WriteLine( "Correo enviado a " + Email + "el siguiente mensaje " + mensaje  );
        }
        public bool EsmayorDeEdad()
        {
            if (Edad >= 18)
            {

                return true;
            }
            return false;
        }
      
    }
}
