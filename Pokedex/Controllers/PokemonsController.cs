using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Pokedex.Data;
using Pokedex.Models;

namespace Pokedex.Controllers
{
    public class PokemonsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public PokemonsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Pokemons
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.Pokemons.Include(p => p.Gender).Include(p => p.Generation).Include(p => p.PokemonBase);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: Pokemons/Details/5
        public async Task<IActionResult> Details(uint? id)
        {
            if (id == null || _context.Pokemons == null)
            {
                return NotFound();
            }

            var pokemons = await _context.Pokemons
                .Include(p => p.Gender)
                .Include(p => p.Generation)
                .Include(p => p.PokemonBase)
                .FirstOrDefaultAsync(m => m.Number == id);
            if (pokemons == null)
            {
                return NotFound();
            }

            return View(pokemons);
        }

        // GET: Pokemons/Create
        public IActionResult Create()
        {
            ViewData["GenderId"] = new SelectList(_context.Genders, "Id", "Name");
            ViewData["GenerationId"] = new SelectList(_context.Generations, "Id", "Name");
            ViewData["EvolvedFrom"] = new SelectList(_context.Pokemons, "Number", "Name");
            return View();
        }

        // POST: Pokemons/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Number,EvolvedFrom,GenerationId,GenderId,Name,Description,Height,Weight,Image,AnimatedImg")] Pokemons pokemons)
        {
            if (ModelState.IsValid)
            {
                _context.Add(pokemons);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["GenderId"] = new SelectList(_context.Genders, "Id", "Name", pokemons.GenderId);
            ViewData["GenerationId"] = new SelectList(_context.Generations, "Id", "Name", pokemons.GenerationId);
            ViewData["EvolvedFrom"] = new SelectList(_context.Pokemons, "Number", "Name", pokemons.EvolvedFrom);
            return View(pokemons);
        }

        // GET: Pokemons/Edit/5
        public async Task<IActionResult> Edit(uint? id)
        {
            if (id == null || _context.Pokemons == null)
            {
                return NotFound();
            }

            var pokemons = await _context.Pokemons.FindAsync(id);
            if (pokemons == null)
            {
                return NotFound();
            }
            ViewData["GenderId"] = new SelectList(_context.Genders, "Id", "Name", pokemons.GenderId);
            ViewData["GenerationId"] = new SelectList(_context.Generations, "Id", "Name", pokemons.GenerationId);
            ViewData["EvolvedFrom"] = new SelectList(_context.Pokemons, "Number", "Name", pokemons.EvolvedFrom);
            return View(pokemons);
        }

        // POST: Pokemons/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(uint id, [Bind("Number,EvolvedFrom,GenerationId,GenderId,Name,Description,Height,Weight,Image,AnimatedImg")] Pokemons pokemons)
        {
            if (id != pokemons.Number)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(pokemons);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PokemonsExists(pokemons.Number))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["GenderId"] = new SelectList(_context.Genders, "Id", "Name", pokemons.GenderId);
            ViewData["GenerationId"] = new SelectList(_context.Generations, "Id", "Name", pokemons.GenerationId);
            ViewData["EvolvedFrom"] = new SelectList(_context.Pokemons, "Number", "Name", pokemons.EvolvedFrom);
            return View(pokemons);
        }

        // GET: Pokemons/Delete/5
        public async Task<IActionResult> Delete(uint? id)
        {
            if (id == null || _context.Pokemons == null)
            {
                return NotFound();
            }

            var pokemons = await _context.Pokemons
                .Include(p => p.Gender)
                .Include(p => p.Generation)
                .Include(p => p.PokemonBase)
                .FirstOrDefaultAsync(m => m.Number == id);
            if (pokemons == null)
            {
                return NotFound();
            }

            return View(pokemons);
        }

        // POST: Pokemons/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(uint id)
        {
            if (_context.Pokemons == null)
            {
                return Problem("Entity set 'ApplicationDbContext.Pokemons'  is null.");
            }
            var pokemons = await _context.Pokemons.FindAsync(id);
            if (pokemons != null)
            {
                _context.Pokemons.Remove(pokemons);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool PokemonsExists(uint id)
        {
          return (_context.Pokemons?.Any(e => e.Number == id)).GetValueOrDefault();
        }
    }
}
