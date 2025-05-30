namespace CoffeeShop.Api.Dto
{
    public class UserDto
    {
        public int Id { get; init; }
        public string Name { get; init; }
        public string Email { get; init; }
        public string PasswordHash { get; init; }
        public string Phone { get; init; }
        public DateTime CreatedAt { get; init; }
        public List<OrderDto> Orders { get; init; } = new();
    }
}
