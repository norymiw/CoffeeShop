using CoffeeShop.Api.Dto;
using CoffeeShop.Api.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace CoffeeShop.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OrderItemController(IOrderItemService orderItemService) : ControllerBase
    {
        [HttpGet("{id}")]
        public async Task<ActionResult<OrderItemDto>> Get(int id, CancellationToken cancellationToken)
        {
            try
            {
                var orderItem = await orderItemService.GetByIdAsync(id, cancellationToken);
                return Ok(orderItem);
            }
            catch (KeyNotFoundException ex)
            {
                return NotFound(ex.Message);
            }
        }

        [HttpGet("order/{orderId}")]
        public async Task<ActionResult<List<OrderItemDto>>> GetByOrderId(
            int orderId,
            CancellationToken cancellationToken)
        {
            var orderItems = await orderItemService.GetByOrderIdAsync(orderId, cancellationToken);
            return Ok(orderItems);
        }

        [HttpPost]
        public async Task<ActionResult<OrderItemDto>> Create(
            [FromBody] OrderItemDto orderItemDto,
            CancellationToken cancellationToken)
        {
            try
            {
                var createdItem = await orderItemService.CreateAsync(orderItemDto, cancellationToken);
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
                await orderItemService.DeleteAsync(id, cancellationToken);
                return NoContent();
            }
            catch (KeyNotFoundException ex)
            {
                return NotFound(ex.Message);
            }
        }
    }
}