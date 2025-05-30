using CoffeeShop.Api.DataBase;
using CoffeeShop.Api.DataBase.Entities;
using CoffeeShop.Api.Dto;
using Microsoft.EntityFrameworkCore;

namespace CoffeeShop.Api.Services
{
    public class MarketService(AppDbContext dbContext) : IMarketService
    {
        public async Task<List<MarketDto>> GetMarketList(CancellationToken cancellationToken)
        {
            var res = await dbContext.Markets
                .Select(x => new MarketDto { Id = x.Id, Name = x.Name, Address = x.Address, Working_hours = x.Working_hours, Phone = x.Phone })
                .ToListAsync(cancellationToken);
            return res;

        }

        public async Task<MarketDto> CreateAsync(MarketDto marketDto, CancellationToken cancellationToken)
        {
            var market = new Market
            {
                Id = marketDto.Id,
                Name = marketDto.Name,
                Address = marketDto.Address,
                Working_hours = marketDto.Working_hours,
                Phone = marketDto.Phone,
            };

            await dbContext.Markets.AddAsync(market, cancellationToken);
            await dbContext.SaveChangesAsync(cancellationToken);

            return MapToDto(market);
        }

        public async Task DeleteAsync(int id, CancellationToken cancellationToken)
        {
            var market = await dbContext.Markets.FindAsync([id], cancellationToken);
            if (market == null)
                throw new KeyNotFoundException($"OrderItem with id {id} not found");

            dbContext.Markets.Remove(market);
            await dbContext.SaveChangesAsync(cancellationToken);
        }

        private static MarketDto MapToDto(Market market) => new()
        {
            Id = market.Id,
            Name = market.Name,
            Address = market.Address,
            Working_hours = market.Working_hours,
            Phone = market.Phone
        };
    }
}
