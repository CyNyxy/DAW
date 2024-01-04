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
            string linea = "";

            while ((linea = sr.ReadLine()) != null)
            {
                string fecha = "|   " + linea.Substring(0, 8) + "  | " + linea.Substring(8) + "    |";
                Console.WriteLine(fecha);
            }
            sr.Close();
            Fichero.Close();

            return sr;
        }


        //public static StreamWriter DameStreamEscritura(FileStream Fichero)
    }
}