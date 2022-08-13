using System.ComponentModel.DataAnnotations;

namespace Exercicios.Models
{
    public class Prestacao
    {
        [Display(Name = "Valor da Prestação")]
        [Required(ErrorMessage = "Informe o Valor da Prestação")]
        [RegularExpression(@"^\d+,?\d{0,2}$", ErrorMessage = "Informe um valor válido!")]
        public double Valor { get; set; }
        
        [Display(Name = "Taxa de Juros")]
        [Required(ErrorMessage = "Informe a Taxa de Juros")]
        [RegularExpression(@"^\d+.?\d{0,2}$", ErrorMessage = "Informe um valor válido!")]
        public double TaxaJuros { get; set; }

        [Display(Name = "Dias em Atraso")]
        [Required(ErrorMessage = "Informe o Número de Dias em Atraso")]
        [RegularExpression(@"[0-9]*$", ErrorMessage = "Informe um valor válido!")]
        public int DiasEmAtraso { get; set; }

        [Display(Name = "Prestação com Juros")]
        [DisplayFormat(DataFormatString="{0:#.##}")]
        public double PrestacaoComJuros { get => Calcular(); }


      

        private double Calcular(){
            return Valor + (Valor * (TaxaJuros / 100) * DiasEmAtraso);
        }

    }
}
