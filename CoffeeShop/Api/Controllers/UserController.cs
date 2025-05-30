using CoffeeShop.Api.Dto;
using CoffeeShop.Api.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace CoffeeShop.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController(IUserService userService) : ControllerBase
    {
        [HttpGet]
        public async Task<IEnumerable<UserDto>> Get(CancellationToken cancellationToken)
        {
            return await userService.GetUserList(cancellationToken);
        }

        [HttpPost]
        public async Task<ActionResult<UserDto>> Create(
            [FromBody] UserDto userDto,
            CancellationToken cancellationToken)
        {
            try
            {
                var createdItem = await userService.CreateAsync(userDto, cancellationToken);
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
                await userService.DeleteAsync(id, cancellationToken);
                return NoContent();
            }
            catch (KeyNotFoundException ex)
            {
                return NotFound(ex.Message);
            }
        }
    }
}
