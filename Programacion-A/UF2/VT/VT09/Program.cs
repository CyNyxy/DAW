using System;

namespace VT09
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int[] lista = new int[4];

            for (int i = 0; i < lista.Length; i++)
            {
                Console.Write("Introduce la cifra {0}: ", i);
                int cifra = int.Parse(Console.ReadLine());
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
                suma += lista[i];
            }

            return "El resultado de la suma es " + suma;
        }
    }
}



// SOLUCION 1

//using System;

//namespace VT09_20231113
//{
//    internal class Program
//    {
//        static void Main(string[] args)
//        {
//            int cifra01 = RecogerNumero(1);
//            int cifra02 = RecogerNumero(2);
//            int cifra03 = RecogerNumero(3);
//            int cifra04 = RecogerNumero(4);

//            Console.WriteLine("El resultado de la suma es " + (cifra01 + cifra02 + cifra03 + cifra04));
//        }

//        public static int RecogerNumero(int numOperador)
//        {
//            Console.Write("Introduce la cifra " + numOperador + ": ");

//            return int.Parse(Console.ReadLine());
//        }
//    }
//}


// SOLUCION 2

//using System;

//namespace VT09_20231113
//{
//    internal class Program
//    {
//        static void Main(string[] args)
//        {
//            int[] cifras = new int[4];

//            for (int i = 0; i < cifras.Length; i++)
//            {
//                cifras[i] = RecogerNumero(i + 1);
//            }

//            Console.WriteLine("El resultado de la suma es " + (cifras[0] + cifras[1] + cifras[2] + cifras[3]));
//        }

//        public static int RecogerNumero(int numOperador)
//        {
//            Console.Write("Introduce la cifra " + numOperador + ": ");

//            return int.Parse(Console.ReadLine());
//        }
//    }
//}


// ORIGINAL

//using System;

//namespace VT09_20231113
//{
//    internal class Program
//    {
//        static void Main(string[] args)
//        {
//            Console.Write("Introduce la cifra 1: ");
//            int cifra01 = int.Parse(Console.ReadLine());

//            Console.Write("Introduce la cifra 2: ");
//            int cifra02 = int.Parse(Console.ReadLine());

//            Console.Write("Introduce la cifra 3: ");
//            int cifra03 = int.Parse(Console.ReadLine());

//            Console.Write("Introduce la cifra 4: ");
//            int cifra04 = int.Parse(Console.ReadLine());


//            Console.WriteLine("El resultado de la suma es " + (cifra01 + cifra02 + cifra03 + cifra04));
//        }
//    }
//}
