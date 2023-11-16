using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VT06_Ejercicio2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Random random = new Random();
            int[,] matriz = new int[2, 3];

            for (int i = 0; i < matriz.GetLength(0); i++)
            {
                for (int j = 0; j < matriz.GetLength(1); j++)
                {
                    matriz[i,j] = random.Next(100);

                    Console.Write(matriz[i,j] + "\t");
                }
                Console.Write("\n");
            }

            Console.ReadKey();
        }
    }
}
