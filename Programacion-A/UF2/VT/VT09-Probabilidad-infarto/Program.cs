using System;

namespace VT09_Probabilidad_infarto
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string pregunta;
            bool estres = false;
            bool peso = false;

            do
            {
                Console.WriteLine("Tiene estrés?");
                pregunta = Console.ReadLine();

                if (pregunta == "si")
                {
                    estres = true;
                }
            } while (RespuestaValida(pregunta) == false);


            do
            {
                Console.WriteLine("Tiene sobrepeso?");
                pregunta = Console.ReadLine();

                if (pregunta == "si")
                {
                    peso = true;
                }
            } while (RespuestaValida(pregunta) == false);
            

            Console.WriteLine(Infarto(estres, peso));

            Console.ReadKey();
        }

        public static string Infarto(bool estres, bool peso) 
        {
            int porcentaje = 0;

            if (estres == true && peso == true)
            {
                porcentaje = 62;
            }
            if (estres == true && peso == false)
            {
                porcentaje = 15;
            }
            if (estres == false && peso == true)
            {
                porcentaje = 18;
            }
            if (estres == false && peso == false )
            {
                porcentaje = 5;
            }

            return "Su probabilidad de sufrir un infarto es de: " + porcentaje + "%";
        }

        public static bool RespuestaValida(string pregunta)
        {
            if (pregunta == "si" | pregunta == "no")
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
