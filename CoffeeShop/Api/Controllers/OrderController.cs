using CoffeeShop.Api.DataBase;
using CoffeeShop.Api.DataBase.Entities;
using CoffeeShop.Api.Dto;
using CoffeeShop.Api.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace CoffeeShop.Api.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class OrderController(IOrderService orderService) : ControllerBase
    {
        [HttpGet]
        public async Task<IEnumerable<MenuDto>> Get(CancellationToken cancellationToken)
        {
            return (IEnumerable<MenuDto>)await orderService.GetOrderList(cancellationToken);
        }

        [HttpPost]
        public async Task<ActionResult<OrderDto>> Create(
            [FromBody] OrderDto orderDto,
            CancellationToken cancellationToken)
        {
            try
            {
                var createdItem = await orderService.CreateAsync(orderDto, cancellationToken);
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
                await orderService.DeleteAsync(id, cancellationToken);
                return NoContent();
            }
            catch (KeyNotFoundException ex)
            {
                return NotFound(ex.Message);
            }
        }
    }
}
    