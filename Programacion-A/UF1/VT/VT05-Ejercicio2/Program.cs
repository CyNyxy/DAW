using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VT05_Ejercicio2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int[] tabla = new int[10];
            int contador = 0;


            Console.Write("Escribe 10 números enteros: ");

            for (int i = 0; i < tabla.Length; i++)
            {
                tabla[i] = Int32.Parse(Console.ReadLine());

                if (tabla[i] % 2 == 0)
                {
                    contador++;
                }
            }

            Console.WriteLine("Hay " + contador + " números pares");

            Console.ReadKey();
        }
    }
}
