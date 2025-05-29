namespace CoffeeShop.Client.Models
{
    public class MenuItemDto
    {
        public int Id { get; init; }
        public string Name { get; init; }
        public string Description { get; init; }
        public decimal Price { get; init; }
        public string Category { get; init; }
        public int Calories { get; init; }

        public string ImageUrl { get; init; } //добавила
    }
}
