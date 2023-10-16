using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VT03
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // int NUM3 = 0;
            // NUM3 += 5;

            // Funciones sobre string
            string nombre = "Programación   ";

            bool s1 = true;
            bool s2 = false;

            if (s1 ^ s2)
            {
                Console.WriteLine("Funciona");
            }

            // Console.ReadLine();

            // Break/Continue

            for (int i = 1; i <= 100; i++)
            {
                if (i == 5)
                {
                    break;
                }
                Console.WriteLine("El valor de y en este punto es {0}", i);
            }

            for (int i = 1; i <= 10; i++)
            {
                if (i < 9)
                {
                    continue;
                }
                Console.WriteLine("El valor de i es {0}", i);
            }

            Console.ReadKey();
        }
    }
}
