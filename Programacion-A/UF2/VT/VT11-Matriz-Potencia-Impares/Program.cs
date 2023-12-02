using System;

namespace VT_Matriz_impares
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Crear una matriz de n* m filas(cargar n y m por teclado)
            Console.Write("Cuántas filas tiene la matriz? ");
            int filas = int.Parse(Console.ReadLine());
            Console.Write("Cuántas columnas tiene la matriz? ");
            int columnas = int.Parse(Console.ReadLine());

            // Añadir sus valores aleatoriamente entre 0 y 10
            int[,] num = MatrizAleatoria(filas, columnas);

            // Imprimir la matriz completa
            ImprimirMatriz(num);

            // Si los valores son impares, se hará la potencia de exponente 2 sobre ese valor
            PotenciarMatrizImpares(num);

            // Volver a imprimir la matriz completa
            ImprimirMatriz(num);
        }

        static int[,] MatrizAleatoria(int f, int c)
        {
            int[,] num = new int[f, c];

            Random random = new Random();

            for (int i = 0; i < num.GetLength(0); i++)
            {
                for (int j = 0; j < num.GetLength(1); j++)
                {
                    num[i, j] = random.Next(11);
                }
            }

            return num;
        }

        static void ImprimirMatriz(int[,] matriz)
        {
            for (int i = 0; i < matriz.GetLength(0); i++)
            {
                for (int j = 0; j < matriz.GetLength(1); j++)
                {
                    Console.Write(matriz[i, j] + "\t");
                }
                Console.WriteLine();
            }
        }

        static void PotenciarMatrizImpares(int[,] matriz)
        {
            for (int i = 0; i < matriz.GetLength(0); i++)
            {
                for (int j = 0; j < matriz.GetLength(1); j++)
                {
                    if (matriz[i, j] % 2 != 0)
                    {
                        matriz[i, j] = (int)Math.Pow(matriz[i, j], 2);
                    }
                }
            }
        }
    }
}
