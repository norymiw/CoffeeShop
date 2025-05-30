using CoffeeShop.Api.Dto;

namespace CoffeeShop.Api.Services
{
    public interface IMarketService
    {
        Task<MarketDto> CreateAsync(MarketDto marketDto, CancellationToken cancellationToken);
        Task DeleteAsync(int id, CancellationToken cancellationToken);
        Task<List<MarketDto>> GetMarketList(CancellationToken cancellationToken);
    }
}