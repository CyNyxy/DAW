using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VT02
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Variables
            int a = 0;
            int b = 0;

            // Obtenemos valores de a y b
            Console.Write("Escribe el valor del primer número: ");
            a = Int32.Parse(Console.ReadLine());

            Console.Write("Escribe el valor del segundo número: ");
            b = Int32.Parse(Console.ReadLine());

            if (a > b)
            {
                Console.Write("A es Mayor.");
            }
            else if (b > a)
            {
                Console.Write("B es mayor.");
            }
            else
            {
                Console.Write("A y B son iguales.");
            }

            Console.ReadKey();
        }
    }
}
