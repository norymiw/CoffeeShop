using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace CoffeeShop.Api.Dto
{
    public class DeliveryAddressDto
    {
        public int Id { get; init; }
        public int UserId { get; init; }
        public string Address { get; init; }
        public bool IsDefault { get; init; }
    }
}
