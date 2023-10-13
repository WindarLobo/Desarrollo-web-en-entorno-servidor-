using System;
using System.Collections;
using System.ComponentModel.Design;
using System.Globalization;
using System.Linq.Expressions;
using System.Xml.Linq;
using static System.Console;
namespace Ejercicio_65_;

public class Program
{
    static Random rnd = new Random();
    static void Main(string[] args)
    {

        //ejercicio1();
        //  ejercicio2();
        //ejercicio3();
        // ejercicio4();
        //  ejercicio5();
        // ejercicio6();
        // ejercicio7();
        //ejercicio8();
        // ejercicio9();
        // ejercicio10();
        // ejercicio11();

        //SUMAS:

        //ejercicio12();
        // ejercicio13();
        // ejercicio14();
        //  ejercicio15();

        //CONTADOR:
        // ejercicio16();
        // ejercicio17();
        //ejercicio18();
        // ejercicio19();

        //BUSQUEDA:

        //ejercicio20();
        //   ejercicio21();
        //  ejercicio22();
     //   ejercicio23();
        ejercicio24();
        ReadLine();

    }


    private static void ejercicio1()

    {
        /*Crear el siguiente array: {1,2,3,4,5,6,7,8,9}*/
        int[] numero = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
        for (int i = 0; i < numero.Length; i++)
        {
            int n = numero[i];
            Write(n + ",");

        }
    }
    private static void ejercicio2()
    {
        /*Crear un array con capacidad para 20 valores de tipo float.*/
        Random rnd = new Random();

        float[] numero = new float[20];
        for (int i = 0; i < numero.Length; i++)
        {
            numero[i] = rnd.Next(1, 11);

        }
        foreach (float f in numero)
        {
            Write("[" + f + "]");
        }
    }
    private static void ejercicio3()
    {
        /*Crear un array con capacidad para 10 valores de tipo int.
         A continuación, modificar las posiciones: 0, 2 ,5, y 9 para darle valores negativos*/
        Random rnd = new Random();

        int[] numero = new int[10];
        for (int i = 0; i < numero.Length; i++)
        {
            numero[i] = rnd.Next(1, 11);

        }
        WriteLine("Posicion original : ");
        foreach (int f in numero)
        {
            Write("[" + f + "]");
        }
        numero[0] = 9;
        numero[2] = 1;
        numero[5] = 10;
        numero[9] = 5;

        WriteLine("\nPosicion moidificada : ");
        foreach (int f in numero)
        {
            Write("[" + f + "]");
        }

    }
    private static void ejercicio4()
    {
        /*Crear un array con capacidad para 5 valores de tipo String.
A continuación, guardar en él los nombres de los 5 mejores libros que hayas leído.*/
        string[] numero = new string[5];

        numero[0] = "Cien años de soledad, de Gabriel García Márquez.";
        numero[1] = "El señor de los anillos (Trilogía), de J. R. R. Tolkien. ";
        numero[2] = "1984, de George Orwell.";
        numero[3] = "Un mundo feliz, de Aldous Huxley";
        numero[4] = "Orgullo y prejuicio, de Jane Austen.";

        for (int i = 0; i < numero.Length; i++)
        {
            WriteLine("* " + numero[i]);
        }
    }
    private static void ejercicio5()
    {
        /*Crear un array con capacidad para 4 valores de tipo short.
         A continuación, ir solicitando al usuario que vaya dando valores a las diferentes posiciones.*/
        do
        {
            char[] numero = new char[4];

            for (int i = 0; i < 4; i++)
            {
                WriteLine("Introduce una letra");
                string letra = ReadLine();

                if (!string.IsNullOrEmpty(letra))
                {
                    numero[i] = letra[0];
                    break;
                }
                else
                {
                    WriteLine("No puede estar vacia ");
                    i--;
                }

            }
            foreach (char f in numero)
            {
                Write("[" + f + "]");
            }

        } while (true);

    }
    private static void ejercicio6()
    {
        /*Crear un array con capacidad para 50 valores de tipo double.
           Modificar la última posición para darle valor -1.*/
        double[] capacidad = new double[50];
        Random rnd = new Random();

        for (int i = 0; i < capacidad.Length; i++)
        {
            capacidad[i] = rnd.NextDouble() * 20;


        }
        foreach (double n in capacidad)
        {
            Write("[" + n.ToString("F1") + "]");


        }
        capacidad[49] = -1;

        WriteLine("\nPosicion moidificada : ");

        foreach (double n in capacidad)
        {
            Write("[" + n.ToString("F1") + "]");
        }
    }
    private static void ejercicio7()
    {
        /*Crear un array con capacidad para n valores de tipo Integer, siendo n una variable cuyo valor debe de ser solicitado al usuario.
          Darle valor a la primera y última posición.*/

        WriteLine("Intriduce la capacionde tu matriz : ");

        if (int.TryParse(ReadLine(), out int valor))
        {

            int[] capacidad = new int[valor];

            WriteLine($"Introduce un valor en el indice {0} : ");

            if (int.TryParse(ReadLine(), out int n1))
            {
                capacidad[0] = n1;

            }
            WriteLine($"Introduce un valor en el indice  {valor - 1}: ");

            if (int.TryParse(ReadLine(), out int n2))
            {
                capacidad[valor - 1] = n2;

            }
            foreach (double n in capacidad)
            {
                Write("[" + n + "]");
            }


        }


    }
    private static void ejercicio8()
    {
        /*Crear un array con capacidad para 100 valores de tipo int.
       A continuación, darle valores aleatorios entre 0 y 10 a todas las posiciones.*/

        int[] capacidad = new int[100];


        for (int i = 0; i < capacidad.Length; i++)
        {
            capacidad[i] = rnd.Next(1, 51);


        }
        foreach (double n in capacidad)
        {
            WriteLine("[" + n + "]");


        }

    }
    private static void ejercicio9()
    {
        /*Crear un array con capacidad para 100 valores de tipo int.
         A continuación, guardar en las posiciones pares los valores : 1,2,3,4,...*/
        int[] capacidad = new int[100];
        for (int i = 0; i < 100; i++)
        {
            if (i % 2 == 0)
            {
                capacidad[i] = (i / 2) + 1;

            }
        }
        foreach (double n in capacidad)
        {
            Write("[" + n + "]");


        }

    }
    private static void ejercicio10()
    {
        /*Crear un array con capacidad para 100 valores de tipo int.
           A  continuación, modificar todas las posiciones impares con números aleatorios entre 10 y 35.*/

        int[] capacidad = new int[100];
        for (int i = 0; i < 100; i++)
        {
            if (i % 2 != 0)
            {
                capacidad[i] = rnd.Next(10, 36);

            }
        }
        foreach (double n in capacidad)
        {
            Write("[" + n + "]");

        }

    }
    private static void ejercicio11()
    {
        /*Crear un array con 50 valores aleatorios cuyos valores están entre el rango -10 y 50.
         A continuación, mostrar los valores negativos junto con la posición que ocupan.*/

        int[] capacidad = new int[50];
        for (int i = 0; i < 50; i++)
        {
            capacidad[i] = rnd.Next(-10, 51);


        }
        for (int i = 0; i < 50; i++)
        {
            if (capacidad[i] < 0)
            {
                WriteLine($"En la paosicion {i} : [{capacidad[i]}]");
            }
        }

    }
    private static void ejercicio12()
    {

        /*Crea un array de 100 valores aleatorios entre -10 y 10 y suma todos los elementos de un array.*/

        int suma = 0;
        int[] capacidad = new int[100];
        for (int i = 0; i < 100; i++)
        {
            capacidad[i] = rnd.Next(-10, 11);


        }
        for (int i = 0; i < 100; i++)
        {
            suma += capacidad[i];

        }

        WriteLine("\nSuma de todos los elementos del array: " + suma);
    }
    private static void ejercicio13()
    {
        /*Crea un array de 100 valores aleatorios entre -10 y 10 y suma todos los elementos de un array que ocupan posiciones con índice par.*/
        int[] capacidad = new int[100];
        int suma = 0;
        for (int i = 0; i < 100; i++)
        {
            capacidad[i] = rnd.Next(-10, 11);

        }
        for (int i = 0; i < 100; i += 2)
        {
            if (i % 2 == 0)
            {
                suma += capacidad[i];

            }
        }
        WriteLine("\nSuma de todos los elementos de un array par : " + suma);
    }

    private static void ejercicio14()
    {
        /*Crea un array de 100 valores aleatorios entre -10 y 10 y suma los cuadrados de los valores de un array.*/
        int[] capacidad = new int[100];
        int suma = 0;
        for (int i = 0; i < 100; i++)
        {
            capacidad[i] = rnd.Next(-10, 11);
        }
        foreach (int numero in capacidad)
        {
            suma += numero * numero;
        }
        WriteLine("\nSuma de todos los elementos de un array par : " + suma);
    }
    private static void ejercicio15()
    {
        /*Crea un array de 100 valores aleatorios entre -10 y 10 y suma aquellos valores de un array que no son negativos.*/


        int[] capacidad = new int[100];
        int suma = 0;
        for (int i = 0; i < 100; i++)
        {
            capacidad[i] = rnd.Next(-10, 11);

            if (capacidad[i] > 0)
            {
                suma += capacidad[i];
            }
        }
        foreach (var item in capacidad)
        {
            WriteLine(item);
        }

        WriteLine("\nSuma de todos los elementos  : " + suma);
    }
    private static void ejercicio16()
    {
        /*Crea un array de 100 valores aleatorios entre -10 y 10 e indica cuantos valores negativos hay en un array.*/
        int[] capacidad = new int[100];
        int contador = 0;
        for (int i = 0; i < capacidad.Length; i++)
        {
            capacidad[i] = rnd.Next(-10, 11);

            if (capacidad[i] < 0)
            {
                contador++;
            }
        }
        foreach (var item in capacidad)
        {
            WriteLine(item);
        }

        WriteLine("\nHay valores negativo en array   : " + contador);
    }
    private static void ejercicio17()
    {
        /*Crea un array de 100 valores aleatorios entre -10 y 10 e indica el porcentaje de números impares que hay en un array.*/

        int[] capacidad = new int[10];
        int contador = 0;
        for (int i = 0; i < capacidad.Length; i++)
        {
            capacidad[i] = rnd.Next(-10, 11);

            if (capacidad[i] % 2 != 0)
            {
                contador++;
            }
        }
        foreach (var item in capacidad)
        {
            WriteLine(item);
        }

        WriteLine($" Porcentaje de números impares que hay :{((double)contador / capacidad.Length * 100).ToString("F2") + "%"}");
    }

    private static void ejercicio18()
    {
        /*Pide por pantalla un array de 10 elementos e indica cuántas posiciones vacías hay en un array de strings.*/
        // Bucle para solicitar 10 veces un array de 10 elementos
        int posicionesVacias = 0;
        for (int i = 0; i < 10; i++)
        {

            Console.WriteLine("Introduce un elementos:");


            string[] userInput = ReadLine().Split(' ');



            foreach (string elemento in userInput)
            {
                if (string.IsNullOrWhiteSpace(elemento))
                {
                    posicionesVacias++;
                }

            }

        }

        WriteLine($"Número de posiciones  vacías en el array:  {posicionesVacias}");

    }
    private static void ejercicio19()
    {
        /*Crea un array de 100 valores aleatorios entre 500 y 2000 y muestra todos los números de un array que son superiores a 1000*/
        int[] capacidad = new int[100];

        for (int i = 0; i < capacidad.Length; i++)
        {
            capacidad[i] = rnd.Next(500, 2001);


        }
        WriteLine("\nEl array superior a 100 son   : ");
        foreach (var item in capacidad)
        {
            if (item > 1000)
            {
                WriteLine(item);
            }

        }
    }
    private static void ejercicio20()
    {
        /*Crea un array de 100 valores aleatorios entre 500 y 2000 y muestra el primer número superior a 1000 y la posición que ocupa en un array.*/
        int[] capacidad = new int[100];

        for (int i = 0; i < capacidad.Length; i++)
        {
            capacidad[i] = rnd.Next(500, 2001);


        }
        int posicion = 0;
        for (int i = 0; i < capacidad.Length; i++)
        {
            if (capacidad[i] > 1000)
            {
                posicion = i;
                WriteLine("Primer número superior a 1000: " + capacidad[posicion] + "  la posicion q ocupa " + posicion);
                break;
            }
        }

    }
    private static void ejercicio21()
    {
        /*Pide por pantalla un array de 10 elementos e indica la primera posición vacía de un array de strings.*/
        string[] arrayDeStrings = new string[10];

        for (int i = 0; i < arrayDeStrings.Length; i++)
        {
            Console.Write($"Ingresa un valor para la posición {i}: ");
            arrayDeStrings[i] = ReadLine();
        }

        for (int i = 0; i < arrayDeStrings.Length; i++)
        {
            if (string.IsNullOrEmpty(arrayDeStrings[i]))
            {
                int primeraPosicionVacia = i;
                WriteLine($"La primera posición vacía se encuentra en el índice {primeraPosicionVacia}.");
                break;
            }
        }

    }
    private static void ejercicio22()
    {
        /*Crea un array de 100 valores aleatorios entre -10 y 10 e indica la posición del primer número par que hay en un array.*/
        int[] arrayDeStrings = new int[100];

        for (int i = 0; i < arrayDeStrings.Length; i++)
        {

            arrayDeStrings[i] = rnd.Next(-10, 11);

            if ((arrayDeStrings[i] % 2 == 0 && arrayDeStrings[i] != 0))
            {
                int primeraPosicionVacia = i;
                WriteLine($"La primera posición par se encuentra en el índice {primeraPosicionVacia} = {arrayDeStrings[i]}");
                break;
            }

        }
    }

    private static void ejercicio23()
    {
        /*Crea una matriz de nombres de frutas y pide al usuario que ingrese el nombre de una fruta. 
         * Utiliza la función Array.indexOf() para buscar el índice de la fruta ingresada por el usuario en la matriz de frutas.*/

        string[] frutas = { "Cambur", "Banana", "Peras" };


        WriteLine($"Introduce el  nombre de la a fruta : ");
        string frutaBuscada = ReadLine().ToLower();
        for (int i = 0; i < frutas.Length; i++)
        {
            frutas[i] = frutas[i].ToLower();
        }
        int indice = Array.IndexOf(frutas, frutaBuscada);
        WriteLine($"El indice de la fruta es {indice}");

    }
    private static void ejercicio24()
    {
        /*Crea una matriz de nombres de frutas y ordénalos alfabéticamente de forma normal y de forma inversa usando Sort() y Reverse()*/

        string[] frutas = { "manzana", "banana", "naranja", "uva", "mango", "sandía", "piña", "fresa", "kiwi", "pera" };

        for (int i = 0; i < frutas.Length; i++)
        {
            frutas[i] = frutas[i].ToLower();
        }


        WriteLine("Arrays sin orenar: ");

        foreach (var item in frutas)
        {
            WriteLine(item);
        }

        WriteLine("\nArrays ordenada: ");
        Array.Sort(frutas);
        foreach (var item in frutas)
        {
            WriteLine(item);
        }

        WriteLine("\nArrays Reversa: ");
        Array.Reverse(frutas);
        foreach (var item in frutas)
        {
            WriteLine(item);
        }
    }


}








