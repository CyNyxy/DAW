using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VT04
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //------------------------------------------------------------------------- Demo operadores condicionales
            string manzana = "manzana";
            string pera = "pera";
            string fresa = "fresa";
            string uva = "uva";
            string melon = "melon";


            if (manzana == "manzana" || pera == "pera" || fresa == "fresa")                   //---operador OR
            //if (manzana == "" && pera == "pera" && fresa == "fresa")                          //---operador AND
            //if (manzana == "manzana" ^ pera == "pera" ^ fresa == "fresa" ^ fresa == "fresa")    //---operador XOR
            {
                Console.WriteLine("La condicional da verdadero.");
            }
            else
            {
                Console.WriteLine("La condicional da falso.");
            }

            //------------------------------------------------------------------------- Demo break / continue
            for (int i = 1; i <= 100; i++)
            {
                if (i == 5)
                {
                    break;
                }
                Console.WriteLine(i);
            }

            for (int i = 1; i <= 10; i++)
            {
                if (i < 9)
                {
                    continue;
                }
                Console.WriteLine(i);
            }

            Console.ReadKey();


            //------------------------------------------------------------------------- Corrección ejercicio anuncio jueves
            int A = 0;
            int B = 0;
            int C = 0;

            Console.Write("Introduce el valor de A: ");
            A = Int32.Parse(Console.ReadLine());

            Console.Write("Introduce el valor de B: ");
            B = Int32.Parse(Console.ReadLine());

            Console.Write("Introduce el valor de C: ");
            C = Int32.Parse(Console.ReadLine());

            if (A > B && A > C)
            {
                Console.WriteLine("A");
            }
            else
            {
                if (B > A && B > C)
                {
                    Console.WriteLine("B");
                }
                else
                {
                    Console.WriteLine("C");
                }
            }
            Console.ReadKey();


            //------------------------------------------------------------------------- VT04 - Ejercicio
            //------------------------------------------- Opción 1
            //string nombre = "";

            //Console.WriteLine("¿Como te llamas?");
            //nombre = Console.ReadLine();

            //------------------------------------------- Opción 2
            //Console.WriteLine("¿Como te llamas?");
            //string nombre = Console.ReadLine();



            //Console.WriteLine("Hola " + nombre);

            string operacion = "";
            int X = 0;
            int Y = 0;

            while (operacion.ToLower() != "fin")
            {
                Console.Write("Introduce el valor de X: ");
                X = Int32.Parse(Console.ReadLine());

                Console.Write("Introduce el valor de Y: ");
                Y = Int32.Parse(Console.ReadLine());

                Console.Write("Introduce la operacion a realizar: ");
                operacion = Console.ReadLine();

                switch (operacion.ToLower())
                {
                    case "suma":
                        Console.WriteLine("SUMA: " + (X + Y));
                        break;

                    case "resta":
                        Console.WriteLine("RESTA: " + (X - Y));
                        break;

                    case "multiplicacion":
                        Console.WriteLine("MULTIPLICACION: " + (X * Y));
                        break;

                    case "division":
                        Console.WriteLine("DIVISION: " + (X / Y));
                        break;

                    case "resto":
                        Console.WriteLine("RESTO: " + (X % Y));
                        break;

                    case "fin":
                        Console.WriteLine("Ya se nos va acabando la clase :)))))))");
                        break;

                    default:
                        Console.WriteLine("No existe la operación.");
                        break;
                }
            }

            //------------------------------------------------------------------------- Fin programa
            Console.ReadKey();
        }
    }
}
