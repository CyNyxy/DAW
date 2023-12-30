using System;

namespace PAC_ext_Buscar_Valor
{
    internal class Program
    {
        static void BuscarValor(int[] arr, int n)
        {
            bool found = false;
            for (int i = 0; i < arr.Length; i++)
            {
                if (arr[i] == n)
                {
                    found = true;
                    break;
                }
            }
            Console.WriteLine(found ? "Encontrado" : "No encontrado");
        }

        static void Main()
        {
            int[] array = { 2, 4, 6, 8, 10 };
            BuscarValor(array, 7);
        }
    }
}
