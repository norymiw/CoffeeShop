using CoffeeShop.Api.DataBase.Entities;

namespace CoffeeShop.Api.Dto
{
    public class OrderItemDto
    {
        public int Id { get; init; }
        public int OrderId { get; init; }
        public int MenuItemId { get; init; }
        public int Quantity { get; init; }
        public decimal ItemPrice { get; init; }
    }
}
