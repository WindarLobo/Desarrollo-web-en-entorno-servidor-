

namespace LoboGarcesWindarTarea4.DataBase.Modelo
{
    public class Tipo
    {
        public int TipoId { get; set; }
        public string TipoNombre { get; set; }

        public override string ToString()
        {
            return TipoNombre;
        }


        public static  string CompararTipos(List<Tipo> tipos1, List<Tipo> tipos2)
        {
            foreach (var tipo1 in tipos1)
            {
                foreach (var tipo2 in tipos2)
                {
                    // Lógica de comparación de tipos
                    // Implementa según tus reglas específicas

                    if (EsTipoFuerte(tipo1, tipo2))
                    {
                        return tipo1.TipoNombre;
                    }
                    else if (EsTipoFuerte(tipo2, tipo1))
                    {
                        return tipo2.TipoNombre;
                    }
                }
            }

           
            return null; // En caso de empate o tipos no comparables
        }


        private static  bool EsTipoFuerte(Tipo tipo1, Tipo tipo2)
        { //linQ
            // Lógica para determinar si tipo1 es fuerte contra tipo2
            // Implementa según tus reglas específicas
            return tipo1.TipoNombre switch
            {
                "Fuego" => tipo2.TipoNombre == "Planta",
                "Agua" => tipo2.TipoNombre == "Fuego",
                "Planta" => tipo2.TipoNombre == "Agua",
                "Electrico" => tipo2.TipoNombre == "Agua" || tipo2.TipoNombre == "Volador",
                "Hielo" => tipo2.TipoNombre == "Planta" || tipo2.TipoNombre == "Tierra",
                "Volador" => tipo2.TipoNombre == "Planta" || tipo2.TipoNombre == "Lucha" || tipo2.TipoNombre == "Bicho",
                "Tierra" => tipo2.TipoNombre == "Fuego" || tipo2.TipoNombre == "Eléctrico",
                "Lucha" => tipo2.TipoNombre == "Normal" || tipo2.TipoNombre == "Hielo" || tipo2.TipoNombre == "Roca" || tipo2.TipoNombre == "Acero" || tipo2.TipoNombre == "Siniestro",
                "Veneno" => tipo2.TipoNombre == "Planta",
                "Roca" => tipo2.TipoNombre == "Fuego" || tipo2.TipoNombre == "Hielo" || tipo2.TipoNombre == "Volador" || tipo2.TipoNombre == "Bicho",
                "Bicho" => tipo2.TipoNombre == "Psíquico" || tipo2.TipoNombre == "Siniestro" || tipo2.TipoNombre == "Planta",
                "Fantasma" => tipo2.TipoNombre == "Psíquico" || tipo2.TipoNombre == "Fantasma",
                "Acero" => tipo2.TipoNombre == "Hielo" || tipo2.TipoNombre == "Roca" || tipo2.TipoNombre == "Hada",
                _ => false,
            };
        }
    }
}
