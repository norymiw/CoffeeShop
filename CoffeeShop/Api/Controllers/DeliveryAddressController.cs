using CoffeeShop.Api.Dto;
using CoffeeShop.Api.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace CoffeeShop.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class DeliveryAddressController(IDeliveryAddressService deliveryAddressService) : ControllerBase
    {
        [HttpGet]
        public async Task<IEnumerable<DeliveryAddressDto>> Get(CancellationToken cancellationToken)
        {
            return await deliveryAddressService.GetDeliveryAddressList(cancellationToken);
        }

        [HttpPost]
        public async Task<ActionResult<DeliveryAddressDto>> Create(
            [FromBody] DeliveryAddressDto deliveryAddressDto,
            CancellationToken cancellationToken)
        {
            try
            {
                var createdItem = await deliveryAddressService.CreateAsync(deliveryAddressDto, cancellationToken);
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
                await deliveryAddressService.DeleteAsync(id, cancellationToken);
                return NoContent();
            }
            catch (KeyNotFoundException ex)
            {
                return NotFound(ex.Message);
            }
        }
    }


}

