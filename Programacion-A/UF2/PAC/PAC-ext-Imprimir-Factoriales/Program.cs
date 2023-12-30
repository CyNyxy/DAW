using System;

namespace PAC_ext_Imprimir_Factoriales
{
    internal class Program
    {
        static void ImprimirFactoriales(int n)
        {
            for (int i = 1; i <= n; i++)
            {
                Console.Write($"{Factorial(i)} ");
            }
        }

        static int Factorial(int n)
        {
            if (n == 1)
                return 1;
            else
                return n * Factorial(n - 1);
        }

        static void Main()
        {
            ImprimirFactoriales(5);
        }
    }
}
