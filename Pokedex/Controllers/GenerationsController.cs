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
    public class GenerationsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public GenerationsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Generations
        public async Task<IActionResult> Index()
        {
              return _context.Generations != null ? 
                          View(await _context.Generations.ToListAsync()) :
                          Problem("Entity set 'ApplicationDbContext.Generations'  is null.");
        }

        // GET: Generations/Details/5
        public async Task<IActionResult> Details(uint? id)
        {
            if (id == null || _context.Generations == null)
            {
                return NotFound();
            }

            var generation = await _context.Generations
                .FirstOrDefaultAsync(m => m.Id == id);
            if (generation == null)
            {
                return NotFound();
            }

            return View(generation);
        }

        // GET: Generations/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Generations/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Name")] Generation generation)
        {
            if (ModelState.IsValid)
            {
                _context.Add(generation);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(generation);
        }

        // GET: Generations/Edit/5
        public async Task<IActionResult> Edit(uint? id)
        {
            if (id == null || _context.Generations == null)
            {
                return NotFound();
            }

            var generation = await _context.Generations.FindAsync(id);
            if (generation == null)
            {
                return NotFound();
            }
            return View(generation);
        }

        // POST: Generations/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(uint id, [Bind("Id,Name")] Generation generation)
        {
            if (id != generation.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(generation);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!GenerationExists(generation.Id))
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
            return View(generation);
        }

        // GET: Generations/Delete/5
        public async Task<IActionResult> Delete(uint? id)
        {
            if (id == null || _context.Generations == null)
            {
                return NotFound();
            }

            var generation = await _context.Generations
                .FirstOrDefaultAsync(m => m.Id == id);
            if (generation == null)
            {
                return NotFound();
            }

            return View(generation);
        }

        // POST: Generations/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(uint id)
        {
            if (_context.Generations == null)
            {
                return Problem("Entity set 'ApplicationDbContext.Generations'  is null.");
            }
            var generation = await _context.Generations.FindAsync(id);
            if (generation != null)
            {
                _context.Generations.Remove(generation);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool GenerationExists(uint id)
        {
          return (_context.Generations?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
