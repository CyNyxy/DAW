using System;

namespace PAC_ext_Triangulo_rectangulo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            ImprimirPatron(4);
        }

        static void ImprimirPatron(int n) 
        { 
            for (int i = 1; i <= n; i++)
            {
                for (int j = 1; j <= i; j++)
                {
                    Console.Write("* ");
                }
                Console.WriteLine();
            }
        }
    }
}
