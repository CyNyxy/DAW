using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VT04_Ejercicio
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Mostrar números impares del 1 al 10.

            //for (int i=1; i<=10; i++)
            //{
            //    int div = i % 2;
            //    if (div != 0)
            //    {
            //        Console.WriteLine(i);
            //    }
            //}

            //int j = 1;
            //while (j <= 10)
            //{
            //    if (j % 2 == 1)
            //    {
            //        Console.WriteLine(j);
            //    }
            //    j++;
            //}

            // Sumar los números entre el 1 y el 5.

            int sum = 0;
            for (int i = 1; i <= 5; i++)
            {
                sum = sum + i;
            }

            //int sum = 0;
            //int i = 1;

            //while (i <= 5)
            //{
            //    sum+= i;
            //    i++;
            //}

            Console.WriteLine(sum);


            Console.ReadKey();

        }

    }
}
