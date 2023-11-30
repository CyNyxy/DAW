using System;

namespace VT10_20231120
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int valor = 7;
            PasoPorValor(valor);
            Console.WriteLine(valor);

            valor = 7;
            PasoPorReferencia(ref valor);
            Console.WriteLine(valor);
        }

        public static void PasoPorValor(int numero)              // --- Ejemplo procedimiento paso por valor
        {
            numero = numero + 5;
        }

        public static void PasoPorReferencia(ref int numero)     // --- Ejemplo procedimiento paso por referencia
        {
            numero = numero + 5;
        }
    }
}