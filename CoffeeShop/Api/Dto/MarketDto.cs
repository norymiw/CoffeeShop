namespace CoffeeShop.Api.Dto
{
    public record MarketDto
    {
        public int Id { get; init; }

        public string Name { get; init; }
        public string Address { get; init; }
        public string Working_hours { get; init; }
        public string Phone { get; init; }
    }
}
