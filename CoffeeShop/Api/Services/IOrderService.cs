using CoffeeShop.Api.Dto;

namespace CoffeeShop.Api.Services
{
    public interface IOrderService
    {
        Task<OrderDto> CreateAsync(OrderDto orderDto, CancellationToken cancellationToken);
        Task DeleteAsync(int id, CancellationToken cancellationToken);
        Task<List<OrderDto>> GetOrderList(CancellationToken cancellationToken);
    }
}