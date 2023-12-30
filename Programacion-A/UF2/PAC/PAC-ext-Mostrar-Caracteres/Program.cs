using System;

namespace PAC_ext_Mostrar_Caracteres
{
    internal class Program
    {
        static void MostrarCaracteres(string str)
        {
            if (str.Length > 0)
            {
                Console.Write($"{str[0]} ");
                MostrarCaracteres(str.Substring(1));
            }
        }

        static void Main()
        {
            string texto = "ABCDEF";
            MostrarCaracteres(texto);
        }
    }
}
