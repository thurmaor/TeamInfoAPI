using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TeamInfoAPI.Data;
using TeamInfoAPI.Models;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TeamInfoAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class BreakfastFoodsController : ControllerBase
    {
        private readonly AppDbContext _context;

        public BreakfastFoodsController(AppDbContext context)
        {
            _context = context;
        }

        // GET: api/BreakfastFoods/{id?}
        [HttpGet("{id?}")]
        public async Task<ActionResult<IEnumerable<BreakfastFood>>> GetBreakfastFoods(int? id)
        {
            if (id == null || id == 0)
            {
                return await _context.BreakfastFoods.Take(5).ToListAsync();
            }

            var item = await _context.BreakfastFoods.FindAsync(id);

            if (item == null)
            {
                return NotFound();
            }

            return new List<BreakfastFood> { item };
        }

        // POST: api/BreakfastFoods
        [HttpPost]
        public async Task<ActionResult<BreakfastFood>> PostBreakfastFood(BreakfastFood breakfastFood)
        {
            _context.BreakfastFoods.Add(breakfastFood);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetBreakfastFoods), new { id = breakfastFood.Id }, breakfastFood);
        }

        // PUT: api/BreakfastFoods/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutBreakfastFood(int id, BreakfastFood breakfastFood)
        {
            if (id != breakfastFood.Id)
            {
                return BadRequest();
            }

            _context.Entry(breakfastFood).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!BreakfastFoodExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // DELETE: api/BreakfastFoods/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteBreakfastFood(int id)
        {
            var breakfastFood = await _context.BreakfastFoods.FindAsync(id);
            if (breakfastFood == null)
            {
                return NotFound();
            }

            _context.BreakfastFoods.Remove(breakfastFood);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool BreakfastFoodExists(int id)
        {
            return _context.BreakfastFoods.Any(e => e.Id == id);
        }
    }
}
