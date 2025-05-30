using CoffeeShop.Api.DataBase.Entities;

namespace CoffeeShop.Api.Dto
{
    public class OrderDto
    {
        public int Id { get; init; }
        public int UserId { get; init; }
        public DateTime OrderDate { get; init; }
        public string Status { get; init; } // "New", "Processing", "Completed", "Cancelled"
        public decimal TotalPrice { get; init; }
        public string DeliveryAddress { get; init; }
        public List<OrderItemDto> OrderItems { get; init; } = new();
    }
}
