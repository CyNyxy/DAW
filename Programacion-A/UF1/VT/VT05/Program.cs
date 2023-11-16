using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VT05
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int num, suma = 0, contador = 0;
            do
            {
                Console.WriteLine("Escribe un numero:");
                num = int.Parse(Console.ReadLine());
                if (num != 0)
                {
                    contador++;
                    suma += num;
                }
            } while (num != 0);
            Console.WriteLine("La media de los numeros es {0}", (double)suma / contador);
            Console.ReadKey();
        }
    }
}
