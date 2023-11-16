using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VT06
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string[] nombres = new string[5];
            double[] sueldos = new double[5];
            int indiceMax = 0;

            for (int i = 0; i < 5; i++)
            {
                do
                {
                    Console.WriteLine("Ingresa el sueldo de este empleado: ");
                    sueldos[i] = double.Parse(Console.ReadLine());

                    //double sueldoIntroducido = double.Parse(Console.ReadLine());

                    //if (sueldoIntroducido <= 0)
                    //{
                    //    sueldos[i] = sueldoIntroducido;
                    //}
                    //else
                    //{
                    //    Console.WriteLine("El sueldo no puede ser 0.");
                    //}

                } while (sueldos[i] <= 0);

                Console.WriteLine("Ingresa el nombre de un empleado: ");
                nombres[i] = Console.ReadLine();

            }

            for (int i = 0; i < 5; i++)
            {
                if (sueldos[indiceMax] < sueldos[i])
                {
                    indiceMax = i;
                }
            }


            //for (int i = 0; i < sueldos.Length; i++)
            //{
            //    numActual = sueldos[i];

            //    for (int j = 0; j < sueldos.Length; j++)
            //    {
            //        if (sueldos[j] < numAnterior)
            //        {
            //            if (sueldos[j] > numActual)
            //            {
            //                numActual = sueldos[j];
            //            }
            //        }

            //    sueldosOrdenados[i] = numActual;
            //    numAnterior = numActual;

            //    }   
            //}




            for (int i = 0; i < 5; i++)
            {
                Console.WriteLine("El empleado " + nombres[i] + " tiene un sueldo de " + sueldos[i] + " euros.");

            }

            //Console.WriteLine("El sueldo más alto es de " + sueldos[indiceMax] + " por " + nombres[indiceMax]);
            Console.WriteLine("El sueldo más alto es de {0} y el empleado es {1}", sueldos[indiceMax], nombres[indiceMax]);

            Console.ReadKey();
        }
    }
}
