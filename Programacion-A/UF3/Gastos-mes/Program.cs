using System;
using System.IO;

namespace Gastos_mes
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string patron = "Gastos_*_??????.txt";

            string[] paths = Directory.GetFiles(Utils.OP_Ficheros.dir_ficheros, patron);

            Console.Write("|-------------------------------------------------------------|\n");
            Console.Write("|    FECHA    |    CONCEPTO                       |  IMPORTE  |\n");
            Console.Write("|-------------------------------------------------------------|\n");

            foreach (string path in paths)
            {
                FileStream x = Utils.OP_Ficheros.AbrirFicheroLectura(path);
                Utils.OP_Ficheros.DameStreamLectura(x);
            }

            Console.Write("|-------------------------------------------------------------|\n");
        }
    }
}