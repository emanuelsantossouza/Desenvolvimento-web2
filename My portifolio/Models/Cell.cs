using System.ComponentModel.DataAnnotations;


namespace Exercicios.Models
{

    public class Cell
    {

        [Display(Name = "Conversor Cell")]
        [Required(ErrorMessage = "Informe a temperatura")]
        public double TemperaturaC { get; set;}


        [Display(Name = "Conversor Fehrenheits")]
        public double TemperaturaF { get => Calcular(); } 

        private double Calcular(){
            return  (TemperaturaC - 32) * 5 / 9;
        }
    }

}

