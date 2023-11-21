using System;

namespace PAC_Desarrollo_Entrega_1S2324
{
    public class Program
    {
        static void Main(string[] args)
        {
            //--- Declaracion de variables
            int numero = 0;
            int[] sec_fibo;


            //------------------------------------------------------------------------------------------ Ejecución libre del programa

            //-------------------------- Se valida que el número introducido sea correcto
            do
            {
                Console.Write("Inserta el número elementos de Fibonacci a calcular: ");
                numero = Int32.Parse(Console.ReadLine());

            } while (NumeroValido(numero) == false);

            //-------------------------- Se obtiene la secuencia Fibonacci
            sec_fibo = SecuenciaFibo(numero);

            //-------------------------- Se obtiene la secuencia Fibonacci invertida
            sec_fibo = SecuenciaReverse(sec_fibo);

            //-------------------------- Se obtiene la primera posición donde aparece el número que más veces está en el array
            Console.WriteLine(PosicionNumeroMasVisto(sec_fibo));

            //--- Fin de la ejecución del programa
            Console.ReadKey();
        }

        public static bool NumeroValido(int numero)
        {
            {
                return numero > 0; // Comprueba que el número sea positivo.
            }
        }

        public static int[] SecuenciaFibo(int numero)
        {
            //--- Se crea un array para almacenar la secuencia Fibonacci
            int[] secuencia = new int[numero];

            //--- Se asignan los dos primeros elementos de la secuencia
            secuencia[0] = 0;
            secuencia[1] = 1;

            //--- Se calculan los demás elementos de la secuencia usando un bucle for
            for (int i = 2; i < numero; i++)
            {
                secuencia[i] = secuencia[i - 1] + secuencia[i - 2];
            }

            //--- Se devuelve el array con la secuencia Fibonacci
            return secuencia;
        }

        public static int[] SecuenciaReverse(int[] directo)
        {
            //--- Se crea un array para almacenar la secuencia Fibonacci invertida
            int[] inverso = new int[directo.Length];

            //--- Se copian los elementos del array directo al array inverso en orden inverso usando un bucle for
            for (int i = 0; i < directo.Length; i++)
            {
                inverso[i] = directo[directo.Length - 1 - i];
            }

            //--- Se devuelve el array con la secuencia Fibonacci invertida
            return inverso;
        }

        public static string PosicionNumeroMasVisto(int[] arr_secuencia)
        {
            //--- Se inicializan variables
            int posicion = 0;
            int valor = 0;
            int recuento = 0;

            for (int i = 0; i < arr_secuencia.Length; i++)
            {
                //--- Se almacena el elemento actual y se inicializa su contador
                int elemento = arr_secuencia[i];
                int contador = 0;

                //--- Se compara el elemento actual con el resto de elementos del array
                for (int j = 0; j < arr_secuencia.Length; j++)
                {
                    //--- Si el elemento actual coincide con otro elemento, se incrementa su contador
                    if (elemento == arr_secuencia[j])
                    {
                        contador++;
                    }
                }

                //--- Se comprueba si el contador del elemento actual es mayor que el recuento máximo
                if (contador > recuento)
                {
                    //--- Si es así, se actualizan las variables de posición, valor y recuento
                    posicion = i;
                    valor = elemento;
                    recuento = contador;
                }
            }

            if (recuento > 1)
            {
                return "El valor " + valor + " se repite " + recuento + " veces según la posicion " + posicion + " del array bidimensional.";
            }
            else
            {
                return "Todos los valores de la secuencia aparecen por igual.";
            }
        }
    }
}