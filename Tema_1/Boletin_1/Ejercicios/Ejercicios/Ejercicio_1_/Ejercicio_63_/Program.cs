namespace Ejercicio_63_;

internal class Program
{
    static void Main(string[] args)
    {
        /*Realizar un programa que genere números aleatorios entre -5 y 5.
         * Para comprobar que realmente son aleatorios haremos un bucle que 
         * genera 10 números aleatorios y los muestra por pantalla. 
         A continuación haremos que este bucle se repita 10 veces mostrando
        por pantalla los números generados en forma de matriz:
        . A continuación haremos que este bucle se repita 10 veces mostrando por pantalla los números generados en forma de matriz:
         -1 , 3 , 4 , -2 , -3 , -1 , 0 , 4 , 1 , 0

        -3 , 1 , -1 , -0, -1 , 1 , 5 , 0 ,2 , 3

         -3 ,1 ,0 , -1 , -4 , 5 , 1 , 2 , -1 , -4
         El programa debe mostrar por cada fila a continuación la siguiente información:
	     Cantidad de números negativos
	    Cantidad de números positivos.
	     Porcentaje de números entre un rango , por ejemplo -2 y 2
    	El valor más repetido.*/




        int numeroPositivo = 0, numeroNegativo = 0,rango=0;
        Dictionary<int, int> conten = new Dictionary<int, int>();



        Random random = new Random();

        for (int i = 0; i < 10; i++)
        {
            int[,] matriz = new int[3, 3];

            Console.WriteLine();

            for (int fila = 0; fila < 3; fila++)
            {
                for (int columna = 0; columna < 3; columna++)
                {
                    matriz[fila, columna] = random.Next(-5, 6);
                    Console.Write(matriz[fila, columna] + ",");

                }
                for (int j = 0; j < 3; j++)
                {
                    int numero = matriz[fila, j];

                    if (numero > 0)
                    {
                        numeroPositivo++;

                    }
                    else if (numero < 0)
                    {
                        numeroNegativo++;

                    }
                    if (numero >=-0 && numero<=2)
                    {
                        rango++;

                    }
                    if (conten.ContainsKey(numero))
                    {
                        conten[numero]++;
                    }
                    else
                    {
                        conten[numero] = 1;
                    }



                }

            }
            
        }
     
        Console.WriteLine($"\nCantidad de números positivos:{numeroPositivo} " );
        Console.WriteLine($"Cantidad de números negativos: {numeroNegativo}" );
        Console.WriteLine($"Cantidad de números dentro del rango:{((double)rango / 3 * 100).ToString("F2") + "%"}");
        Console.WriteLine($"El valor mas repetitivo es : {EncontrarValorMasRepetido(conten)} " );
        Console.ReadLine();
    }
    static int EncontrarValorMasRepetido(Dictionary<int, int> conteoNumeros)
    {
        int valorMasRepetido = 0;
        int maxRepeticiones = 0;

        foreach (var par in conteoNumeros)
        {
            if (par.Value > maxRepeticiones)
            {
                maxRepeticiones = par.Value;
                valorMasRepetido = par.Key;
            }
        }

        return valorMasRepetido;
    }
}

