using System;

namespace VT11_Factorial
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Calcular el factorial de un número usando un método no recursivo y recursivo
            // Fórmula: n! = n * (n−1)!
            // 5! = 5 * 4 * 3 * 2 * 1 = 120

            Console.Write("Introduce un número: ");
            int num = int.Parse(Console.ReadLine());

            // Método no recursivo
            Factorial(num);

            //// Método recursivo
            //int factorial = CalcFactorial(num);

            //Console.WriteLine("El factorial de {0} es {1}", num, factorial);
        }

        static void Factorial(int num)
        {
            //int n = num;

            //for (int i = 1; i <= num - 1; i++)
            //{
            //    n = n * (num - i);
            //}

            int n = 1;

            for (int i = 1; i <= num; i++)
            {
                n = n * i;
            }

            Console.Write("El factorial de {0} es {1}", num, n);
        }

        static int CalcFactorial(int x)
        {
            if (x == 1)
            {
                return 1;
            }
            else
            {
                return x * CalcFactorial(x - 1);
            }
        }
    }
}
