using System;

namespace PAC2
{
    internal class Program
    {
        public static int sumar(int a, int b)
        {
            int resultado = 0;
            resultado = a + b;

            return resultado;
        }

        static void Main()
        {
            int num1 = 98, num2 = 13;
            int resultado = 0;

            resultado = sumar(num1, num2);
        }
    }
}
