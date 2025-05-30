using CoffeeShop.Api.Dto;
using CoffeeShop.Api.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace CoffeeShop.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class MarketController(IMarketService marketService) : ControllerBase
    {
        [HttpGet]
        public async Task<IEnumerable<MarketDto>> Get(CancellationToken cancellationToken)
        {
            return await marketService.GetMarketList(cancellationToken);
        }

        [HttpPost]
        public async Task<ActionResult<MarketDto>> Create(
            [FromBody] MarketDto marketDto,
            CancellationToken cancellationToken)
        {
            try
            {
                var createdItem = await marketService.CreateAsync(marketDto, cancellationToken);
                return CreatedAtAction(nameof(Get), new { id = createdItem.Id }, createdItem);
            }
            catch (DbUpdateException ex)
            {
                return BadRequest($"Database error: {ex.InnerException?.Message ?? ex.Message}");
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(int id, CancellationToken cancellationToken)
        {
            try
            {
                await marketService.DeleteAsync(id, cancellationToken);
                return NoContent();
            }
            catch (KeyNotFoundException ex)
            {
                return NotFound(ex.Message);
            }
        }
    }


}
