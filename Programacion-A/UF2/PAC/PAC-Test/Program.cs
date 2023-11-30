using System;

namespace PAC_Test
{
    internal class Program
    {
        // La suma de los dígitos individuales de un número dado por el usuario
        public static int funcion(int n)
        {
            string n1 = Convert.ToString(n);
            int result = 0;
            for (int i = 0; i < n1.Length; i++)
                result += Convert.ToInt32(n1.Substring(i, 1));
            return result;
        }
        public static void Main(string[] args)
        {
            int num;
            Console.Write("Introduce un número: ");
            num = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("El resultado es {0} \n", funcion(num));
        }
    }
}
