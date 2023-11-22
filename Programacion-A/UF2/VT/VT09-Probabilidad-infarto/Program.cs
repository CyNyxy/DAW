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


//SOLUCION

//using System;

//namespace VT10_20231120
//{
//    internal class Program
//    {
//        static void Main(string[] args)
//        {
//            string[,] tablaPorcentajes = { { "5%", "15%" }, { "18", "62" } };
//            string[,] tablaRespuestas = { { "sobrepeso", "" }, { "stress", "" } };
//            int[] coordenadas = { 9, 9 };

//            // Se leen los datos de entrada y se convierte en una coordenada
//            for (int i = 0; i < coordenadas.Length; i++)
//            {
//                do
//                {
//                    Console.Write("¿Tienes " + tablaRespuestas[i, 0] + "? (S/N): ");
//                    tablaRespuestas[i, 1] = Console.ReadLine();

//                } while (tablaRespuestas[i, 1].Equals("S") == false && tablaRespuestas[i, 1].Equals("N") == false);

//                // Se concierte S/N en coordenadas que referencien a probabilidades
//                if (tablaRespuestas[1, i].Equals("S") == false)
//                {
//                    coordenadas[i] = 0;
//                }
//                else
//                {
//                    coordenadas[i] = 0;
//                }
//            }

//            // Se escribe en salida la resolución
//            Console.WriteLine("La probabilidad de sufrir un infarto es del " + tablaPorcentajes[coordenadas[0], coordenadas[1]]);
//        }
//    }
//}
