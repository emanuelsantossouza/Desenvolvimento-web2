using Microsoft.EntityFrameworkCore;
using Pokedex.Models;

namespace Pokedex.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
        }

        public DbSet<Abilities> Abilities { get; set; }
        public DbSet<Gender> Genders { get; set; }
        public DbSet<Generation> Generations { get; set; }
        public DbSet<Pokemons> Pokemons { get; set; }
        public DbSet<PokemonAbilities> PokemonAbilities { get; set; }
        public DbSet<PokemonTypes> PokemonTypes { get; set; }
        public DbSet<Types> Types { get; set; }
        public DbSet<Weaknesses> Weaknesses { get; set; }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            #region Many to Many - PokemonAbilities
            builder.Entity<PokemonAbilities>().HasKey(
                pa => new { pa.PokemonNumber, pa.AbilityId }
            );
            builder.Entity<PokemonAbilities>()
                .HasOne(pa => pa.Pokemon)
                .WithMany(p => p.Abilities)
                .HasForeignKey(pa => pa.PokemonNumber);

            builder.Entity<PokemonAbilities>()
                .HasOne(pa => pa.Ability)
                .WithMany(a => a.PokemonsWithAbility)
                .HasForeignKey(pa => pa.AbilityId);
            #endregion

            #region Many to Many - PokemonTypes
            builder.Entity<PokemonTypes>().HasKey(
                pt => new { pt.PokemonNumber, pt.TypeId }
            );
            builder.Entity<PokemonTypes>()
                .HasOne(pt => pt.Pokemon)
                .WithMany(p => p.Types)
                .HasForeignKey(pt => pt.PokemonNumber);

            builder.Entity<PokemonTypes>()
                .HasOne(pa => pa.Type)
                .WithMany(t => t.PokemonsOfThisType)
                .HasForeignKey(pa => pa.TypeId);
            #endregion

            #region Many to Many - Weaknesses
            builder.Entity<Weaknesses>().HasKey(
                w => new { w.PokemonNumber, w.TypeId }
            );
            builder.Entity<Weaknesses>()
                .HasOne(w => w.Pokemon)
                .WithMany(p => p.Weaknesses)
                .HasForeignKey(w => w.PokemonNumber);

            builder.Entity<Weaknesses>()
                .HasOne(w => w.Type)
                .WithMany(t => t.PokemonsWithThisWeaknesses)
                .HasForeignKey(w => w.TypeId);
            #endregion
        }
    }
}