using System;

namespace PAC_ext_Funcion_misteriosa
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(FuncionMisteriosa(3, 4));
        }

        static int FuncionMisteriosa(int a, int b)
        {
            if (b == 0)
                return 1;
            else if (b % 2 == 0)
                return FuncionMisteriosa(a * a, b / 2);
            else
                return a * FuncionMisteriosa(a * a, (b - 1) / 2);
        }

        // Devuelve 81
    }
}
