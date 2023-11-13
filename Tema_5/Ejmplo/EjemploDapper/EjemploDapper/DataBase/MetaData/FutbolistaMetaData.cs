using System.ComponentModel.DataAnnotations;

namespace EjemploDapper.DataBase.MetaData
{
    public class FutbolistaMetaData : IValidatableObject
    {
        [Required, StringLength(50)]
        public string Codigo { get; set; }

        [Required, StringLength(50)]
        public string Nombre { get; set; }

        [Required, StringLength(50)]
        public string CodigoEquipo { get; set; }

        [Required, StringLength(50)]
        public string Posicion { get; set; }

        [Required, Range(0, 100)]
        public int Edad { get; set; }

        [Required,Range(0, int.MaxValue)]
        public int Goles { get; set; }

        [Required,Range(0, int.MaxValue)]
        public int TA { get; set; }

        [Required,Range(0, int.MaxValue)]
        public int TR { get; set; }

        [Required,Range(0, int.MaxValue)]
        public int Minutos { get; set; }

        [Required, StringLength(50)]
        public string PrecioMercado { get; set; }

        [Required,Range(0, int.MaxValue)]
        public int Dorsal { get; set; }

        [Required,Range(0, int.MaxValue)]
        public int peso { get; set; }

        public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
        {
            List< ValidationResult>resultados = new List<ValidationResult>();

            if (string.IsNullOrEmpty(CodigoEquipo))
            {
                resultados.Add(new ValidationResult("El código del equipo es obligatorio.", new[] { "CodigoEquipo" }));
            }
            if (Edad >= 45)
            {
                resultados.Add(new ValidationResult("Debe ser menos de 45", new[] { "Edad"}));

            }
            if (Minutos != 0)
            {
                resultados.Add(new ValidationResult("Los minutos debe ser 0", new[] { "Minutos" }));

            }
            if (Dorsal < 1 || Dorsal > 25)
            {
                resultados.Add(new ValidationResult("El dorsal debe estar entre 1 y 25.", new[] { "Dorsal" }));
            }
            if (string.IsNullOrEmpty(PrecioMercado))
            {
                resultados.Add(new ValidationResult("El rpecio no puede estar vacio.", new[] { "PrecioMercado" }));
            }

            return resultados;
        }

    }
    
}
