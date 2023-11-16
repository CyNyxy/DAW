using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VT05_Ejercicio1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Escribe un número de días: ");

            int dias = Int32.Parse(Console.ReadLine());

            int bolsaDias = dias;

            //int years = bolsaDias / 365;
            //bolsaDias = bolsaDias % 365;
            //int months = bolsaDias / 30;
            //bolsaDias %= 30;
            //int weeks = bolsaDias / 7;
            //bolsaDias &= 7;

            //Console.WriteLine(dias + " días son " + years + " año(s), " + months + " mes(es), " + weeks + " semana(s) y " + bolsaDias + " día(s).");

            int years = 0;

            while (bolsaDias >= 365)
            {
                years++;
                bolsaDias -= 365;
            }

            int months = 0;

            while (bolsaDias >= 30)
            {
                months++;
                bolsaDias -= 30;
            }

            int weeks = 0;

            while (bolsaDias >= 7)
            {
                weeks++;
                bolsaDias -= 7;
            }

            Console.WriteLine("Los {0} días introducidos son {1} año(s), {2} mes(es), {3} semanas y {4} días.", dias, years, months, weeks, bolsaDias);

        }
    }
}
