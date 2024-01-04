using System;
using System.IO;

namespace Utils
{
    public class OP_Ficheros
    {
        // Path del directorio raíz de trabajo con los ficheros de empresa
        public const string dir_ficheros = "C:\\Users\\Nyxy\\Desktop\\Ficheros\\";

        public static bool ExisteFichero(string Ruta)
        /*
         * Comprueba que existe un determinado fichero
         *      Retorno: Boolean
         */
        {
            if (File.Exists(Ruta))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public static FileStream AbrirFicheroLectura(string Fichero)
        {
            FileStream F1 = new FileStream(Fichero, FileMode.Open, FileAccess.Read);

            return F1;
        }

        //public static FileStream AbrirFicheroEscritura(string Fichero)

        //public static FileStream CrearFicheroEscritura(string Fichero)

        public static StreamReader DameStreamLectura(FileStream Fichero)
        {

            StreamReader sr = new StreamReader(Fichero);

            Nomenclatura(sr);

            sr.Close();
            Fichero.Close();

            return sr;
        }

        public static void Nomenclatura(StreamReader Fichero)
        {
            string linea = "";

            while ((linea = Fichero.ReadLine()) != null)
            {
                string[] palabras = linea.Trim().Split(' ');

                string fecha = palabras[0].Substring(0, 8);
                string importe = palabras[palabras.Length - 1];
                string concepto = (palabras[0].Substring(8) + " " + palabras[1] + " " + palabras[2]).PadRight(33);

                string registro = "|   " + fecha + "  | " + concepto + " | " + importe.PadRight(10) + "|";
                Console.WriteLine(registro);
            }
        }

        //public static StreamWriter DameStreamEscritura(FileStream Fichero)
    }
}