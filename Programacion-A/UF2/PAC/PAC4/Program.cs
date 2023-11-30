using System;

namespace PAC4
{
    internal class Program
    {
    // Función recursiva para calcular la potencia de un número 
        public static void Main()
        {
            int bNum, pwr;
            int result;

            Console.Write("Introduce la base: ");
            bNum = Convert.ToInt32(Console.ReadLine());

            Console.Write("Introduce el exponente: ");
            pwr = Convert.ToInt32(Console.ReadLine());

            result = CalcuOfPower(bNum, pwr);

            Console.Write("El resultado es {0} \n\n, result");
        }

        public static int CalcuOfPower(int x, int y)
        {
            if (y == 0)           
                return 1;
            
            else
                return x * CalcuOfPower(x, y - 1);
        }
    }
}
