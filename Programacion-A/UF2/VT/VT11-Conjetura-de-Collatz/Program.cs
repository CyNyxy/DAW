using System;

namespace VT11_Conjetura_de_Collatz
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int pasos = 0;
            Console.Write("Introduce un número mayor que 1: ");
            int num = int.Parse(Console.ReadLine());

            while (num > 1)
            {
                int conjetura = Collatz(num, ref pasos);
                Console.Write(conjetura);
            }

        }
        static int Collatz(int valor, ref int pasos)
        {
            int resultado;

            if (valor == 1)
            {
                return 1;
            }
            else
            {
                pasos++;
                if (valor % 2 == 0)
                {
                    valor = valor/2;
                    resultado = Collatz(valor, ref pasos);
                    return resultado;
                }
                else
                {
                    valor = valor*3 + 1;
                    resultado = Collatz(valor, ref pasos);
                    return resultado;
                }
            }

        }
    }
}
