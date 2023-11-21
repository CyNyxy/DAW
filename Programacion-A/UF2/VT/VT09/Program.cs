using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VT09
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int cifra = 0;
            int[] lista = new int[4];

            for (int i = 0; i < lista.Length; i++)
            {
                Console.Write("Introduce la cifra {0}: ", i);
                cifra = int.Parse(Console.ReadLine());
                lista[i] = cifra;
            }



            Console.WriteLine(Suma(lista));


            Console.ReadKey();
        }

        public static string Suma(int[] lista)
        {
            int suma = 0;
            for (int i = 0; i < lista.Length; i++)
            {
                suma = suma + lista[i];
            }
            

            return "El resultado de la suma es " + suma;
        }
    }
}


            //Console.Write("Introduce la cifra 1: ");
            //int cifra01 = int.Parse(Console.ReadLine());

            //Console.Write("Introduce la cifra 2: ");
            //int cifra02 = int.Parse(Console.ReadLine());

            //Console.Write("Introduce la cifra 3: ");
            //int cifra03 = int.Parse(Console.ReadLine());

            //Console.Write("Introduce la cifra 4: ");
            //int cifra04 = int.Parse(Console.ReadLine());

            //Console.WriteLine("El resultado de la suma es " + (cifra01 + cifra02 + cifra03 + cifra04));
