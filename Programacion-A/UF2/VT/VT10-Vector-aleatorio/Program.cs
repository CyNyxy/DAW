using System;

namespace VT10_Vector_aleatorio
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int[] vector = new int[10];

            GenerarAleatorio(vector);
            ImprimirVector(vector);
        }

        static void GenerarAleatorio(int[] array)
        {
            Random rnd = new Random();

            for (int i = 0; i < array.Length; i++)
            {
                array[i] = rnd.Next(0, 51);
            }
        }

        static void ImprimirVector(int[] array)
        {
            for (int i = 0; i < array.Length; i++)
            {
                Console.Write(array[i] + " ");
            }
        }
    }
}
