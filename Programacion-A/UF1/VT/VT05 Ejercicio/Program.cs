using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VT05_Ejercicio
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Se solicita por consola 1 número enteros. Se guardan sobre la variable "cateto".
            //Valida que el número sea mayor que 0.
            //Dibuja en salida un triángulo rectángulo con asteriscos. La longitud de los catetos(lados) deber ser la indicada por entrada

            Console.Write("Escribe un número: ");
            int cateto = Int32.Parse(Console.ReadLine());
            string cadena = "";

            for (int i = 0; i < cateto; i++)
            {
                cadena = "";

                for (int j = 0; j < cateto - i; j++)
                {
                    cadena = cadena + "*";
                }

                Console.WriteLine(cadena);

            }

            Console.ReadKey();
        }
    }
}
