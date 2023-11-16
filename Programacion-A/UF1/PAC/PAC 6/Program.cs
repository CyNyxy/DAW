using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PAC_6
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Completa este código donde se realiza un programa que calcule la media
            //de X números enteros. Se dejarán de solicitar números cuando se introduzca el 0

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
