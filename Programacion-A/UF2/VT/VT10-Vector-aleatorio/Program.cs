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

        static void GenerarAleatorio(int[] vector)
        {
            Random rnd = new Random();

            for (int i = 0; i < vector.Length; i++)
            {
                vector[i] = rnd.Next(0, 51);
            }
        }

        static void ImprimirVector(int[] vector)
        {
            for (int i = 0; i < vector.Length; i++)
            {
                Console.Write(vector[i] + " ");
            }
        }
    }
}
