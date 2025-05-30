using CoffeeShop.Api.DataBase.Entities;
using CoffeeShop.Api.Dto;
using CoffeeShop.Api.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace CoffeeShop.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class MenuController(IMenuService menuService) : ControllerBase
    {
        [HttpGet]
        public async Task<IEnumerable<MenuDto>> Get(CancellationToken cancellationToken)
        {
            return await menuService.GetMenuList(cancellationToken);
        }

        [HttpPost]
        public async Task<ActionResult<MenuDto>> Create(
            [FromBody] MenuDto menuDto,
            CancellationToken cancellationToken)
        {
            try
            {
                var createdItem = await menuService.CreateAsync(menuDto, cancellationToken);
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
                await menuService.DeleteAsync(id, cancellationToken);
                return NoContent();
            }
            catch (KeyNotFoundException ex)
            {
                return NotFound(ex.Message);
            }
        }

        [HttpGet("category/{category}")]
        public async Task<ActionResult<OrderItemDto>> Get(string category, CancellationToken cancellationToken)
        {
            try
            {
                var orderItem = await menuService.GetCategoryList(category ,cancellationToken);
                return Ok(orderItem);
            }
            catch (KeyNotFoundException ex)
            {
                return NotFound(ex.Message);
            }
        }
    }
}