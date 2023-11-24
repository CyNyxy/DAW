using System;

namespace VT10_Encriptador_mensajes
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string mensaje = "IlERNa";

            // Se obtiene el mensaje encriptado llamando la función
            Console.WriteLine(EncriptarMensaje(mensaje));

            Console.ReadKey();
        }


        public static string EncriptarMensaje(string mensaje)
        {
            // Declaración de variables
            int i = 0;
            string[] arrayEncriptado = new string[mensaje.Length];
            string mensajeEncriptado = "";

            while (i < mensaje.Length)
            {
                foreach (char c in mensaje)
                {
                    // Guardamos el codigo ASCII
                    int codigoASCII = (int)c;

                    // Se convierte el codigo ASCII en string
                    string numero = codigoASCII.ToString();

                    // Se convierte el primer y el ultimo numero en string para concatenar
                    string primerChar = numero[0].ToString();
                    string ultimoChar = numero[numero.Length - 1].ToString();

                    // Concatenamos el primer numero y el ultimo
                    string caracterMed = primerChar + ultimoChar;

                    // Se convierten el primer y ultimo digito en int para poder sumar
                    int primerNum = Convert.ToInt32(primerChar);
                    int ultimoNum = Convert.ToInt32(ultimoChar);

                    // Para el principio de la cadena se suma el codigo ASCII y el ultimo digito,
                    // para el final se resta el codigo ASCII y el primer digito
                    int principio = codigoASCII + ultimoNum;
                    int final = codigoASCII - primerNum;

                    // Se obtiene el caracter a partir del codigo ASCII resultante
                    char caracterPri = (char)(principio);
                    char caracterFin = (char)(final);

                    // Se convierte el char en string
                    string stringPri = caracterPri.ToString();
                    string stringFin = caracterFin.ToString();

                    // Caracter encriptado
                    string caracterEncriptado = caracterPri + caracterMed + caracterFin;

                    // Se guarda el resultado del caracter encriptado en el array de caracteres encriptados
                    arrayEncriptado[i] = caracterEncriptado;

                    // Pasamos al siguiente caracter
                    i++;
                }

                // Se concatena los elementos del array para obtener el mensaje encriptado completo
                for (int j = 0; j < arrayEncriptado.Length; j++)
                {
                    mensajeEncriptado += arrayEncriptado[j];
                }
            }

            return "El mensaje encriptado es: " + mensajeEncriptado;

        }
    }
}