using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VT05_Ejercicio_opcional
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //------------------------------------------------------------- Se establece la secuencia de números
            int[] secuenciaNumeros = { 5, 9, 16, 7, 2, 6, 20, 4, 32, 19 };

            //--- 1º se crea un array de la misma longitud que la secuencia de números
            int[] secuencia = new int[secuenciaNumeros.Length];

            //--- 2º se ordena sobre el array creado el contenido del array secuenciaNumeros
            int numAnterior = 0;
            int numActual = 0;

            for (int i = 0; i < secuencia.Length; i++)
            {
                numActual = 0;

                for (int j = 0; j < secuenciaNumeros.Length; j++)
                {
                    if (secuenciaNumeros[j] > numAnterior)
                    {
                        if (numActual == 0 || secuenciaNumeros[j] < numActual)
                        {
                            numActual = secuenciaNumeros[j];
                        }
                    }
                }
                secuencia[i] = numActual;

                numAnterior = numActual;
            }

            //--- 3º se visualiza en consola el contenido del array con los números ordenados
            for (int i = 0; i < secuencia.Length; i++)
            {
                Console.WriteLine(secuencia[i]);
            }

            Console.ReadKey();

            //------------------------------------------------------------- Fin programa
        }
    }
}
