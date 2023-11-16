using System;
using System.Globalization;

namespace PAC
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
            // Se comprueba si el número introducido está entre 3 y 20
            if (numero >= 3 && numero <= 20)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static int[] SecuenciaFibo(int numero)
        {
            int[] secuencia = new int[numero];

            secuencia[0] = 0;
            secuencia[1] = 1;

            for (int i = 2; i < numero; i++)
            {
                secuencia[i] = secuencia[i - 1] + secuencia[i - 2];
            }
            
            return secuencia;

        }

        public static int[] SecuenciaReverse(int[] directo)
        {
            int[] inverso = new int[directo.Length];

            //for (int i = 0; i < inverso.Length; i++)
            //{
            //    for (int j = directo.Length - 1; j >= 0; j--)
            //    {
            //        inverso[i] = directo[j - i];
            //        break;
            //    }
            //}

            // Se recorre el array de entrada desde el final hasta el principio
            for (int i = directo.Length - 1; i >= 0; i--)
            {
                // Se copia el elemento actual del array de entrada en la posición correspondiente del array de salida
                inverso[directo.Length - 1 - i] = directo[i];
            }

            //Lo mismo
            //for (int i = directo.Length; i > 0; i--)
            //{
            //    inverso[directo.Length - i] = directo[i - 1];
            //}

            return inverso;
        }

        public static string PosicionNumeroMasVisto(int[] arr_secuencia)
        {
            int[] array = new int[] { 8, 8, 6, 6, 6, 3, 3, 1, 9, 9, 9, 9, 2 };

            //--- Se inicializan variables
            int posicion = 0;
            int valor = 0;
            int recuento = 0;
            int numUnicos = 0;

            // Se obtiene la longitud del array
            int longitud = array.Length;

            int[] repeticiones = new int[longitud];

            for (int i = 0; i < longitud; i++)
            {
                repeticiones[i] = -1;
            }

            // Se recorre el array y se cuenta la frecuencia de cada elemento
            for (int i = 0; i < longitud; i++)
            {
                int count = 1;

                // Se recorre el array de nuevo y se compara el elemento con los demás
                for (int j = i + 1; j < longitud; j++)
                {
                    if (array[i] == array[j])
                    {
                        count++;
                        repeticiones[j] = 0;
                    }
                }

                if (repeticiones[i] != 0)
                {
                    repeticiones[i] = count;
                    numUnicos++;
                }
            }

            // Se crea el array bidimensional para guardar los valores y las frecuencias
            int[,] frecuencias = new int[2, numUnicos];

            // Se recorre el array de repeticiones y se almacenan los valores y las frecuencias en el array bidimensional
            for (int i = 0; i < longitud; i++)
            {
                if (repeticiones[i] != 0)
                {
                    frecuencias[0, posicion] = array[i];
                    frecuencias[1, posicion] = repeticiones[i];
                    posicion++;
                }
            }

            for (int i = 0; i < numUnicos; i++)
            {
                if (frecuencias[1, i] > recuento)
                {
                    valor = frecuencias[0, i];
                    recuento = frecuencias[1, i];
                    posicion = i;
                }
            }

            //// Version sin array bidimensional
            //// Se recorre el array y se cuenta la frecuencia de cada elemento
            //for (int i = 0; i < longitud; i++)
            //{
            //    int frecuencia = 0;
            //    bool yaContado = false;

            //    // Se recorre el array de nuevo y se compara el elemento con los demás
            //    for (int j = 0; j < longitud; j++)
            //    {
            //        if (array[i] == array[j])
            //        {
            //            frecuencia++;
            //            if (j < i)
            //            {
            //                yaContado = true;
            //                break;
            //            }
            //        }
            //    }

            //    // Se comprueba si el elemento es el más repetido hasta el momento
            //    if (!yaContado && frecuencia > recuento)
            //    {
            //        valor = array[i];
            //        recuento = frecuencia;
            //        posicion = i;
            //    }
            //}


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