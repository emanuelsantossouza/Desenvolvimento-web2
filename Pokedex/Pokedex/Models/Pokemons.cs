using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Pokedex.Models
{
    [Table("Pokemons")]
    public class Pokemons
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public uint Number { get; set; }
        
        [Display(Name = "Pokemon Base")]
        public uint? EvolvedFrom { get; set; }
        [Display(Name = "Pokemon Base")]
        [ForeignKey("EvolvedFrom")]
        public Pokemons? PokemonBase { get; set; }

        [Display(Name = "Geração")]
        [Required(ErrorMessage = "Por favor, informe a Geração do Pokemon")]
        public uint GenerationId { get; set; }
        [Display(Name = "Geração")]
        [ForeignKey("GenerationId")]
        public Generation Generation { get; set; } = new();

        [Display(Name = "Gênero")]
        [Required(ErrorMessage = "Por favor, informe o Gênero do Pokemon")]
        public uint GenderId { get; set; }
        [Display(Name = "Gênero")]
        [ForeignKey("GenderId")]
        public Gender Gender { get; set; } = new();

        [Display(Name = "Nome")]
        [Required(ErrorMessage = "Por favor, informe o Nome")]
        [StringLength(30, ErrorMessage = "O Nome deve possuir no máximo 30 caracteres")]
        public string Name { get; set; } = string.Empty;
        
        [Display(Name = "Descrição")]
        [StringLength(1000, ErrorMessage = "A Descrição deve possuir no máximo 1000 caracteres")]
        public string? Description { get; set; }

        [Display(Name = "Altura")]
        [Required(ErrorMessage = "Por favor, informe a Altura")]
        [Column(TypeName = "decimal(5,2)")]
        public double Height { get; set; }

        [Display(Name = "Peso")]
        [Required(ErrorMessage = "Por favor, informe o Peso")]
        [Column(TypeName = "decimal(7,3)")]
        public double Weight { get; set; }

        [Display(Name = "Imagem")]
        [StringLength(200)]
        public string? Image { get; set; }

        [Display(Name = "Imagem")]
        [StringLength(200)]
        public string? AnimatedImg { get; set; }

        public ICollection<PokemonAbilities> Abilities { get; set; } = new List<PokemonAbilities>();
        public ICollection<PokemonTypes> Types { get; set; } = new List<PokemonTypes>();
        public ICollection<Weaknesses> Weaknesses { get; set; } = new List<Weaknesses>();
    }
}