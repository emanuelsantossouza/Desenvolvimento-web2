using Pokedex.Models;

namespace Pokedex.ViewModels
{
    public class Details
    {
        public Pokemons? Prior { get; set; }
        public Pokemons? Current { get; set; }
        public Pokemons? Next { get; set; }
    }
}