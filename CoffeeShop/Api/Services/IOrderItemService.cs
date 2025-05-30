using CoffeeShop.Api.Dto;

namespace CoffeeShop.Api.Services
{
    public interface IOrderItemService
    {
        Task<OrderItemDto> CreateAsync(OrderItemDto orderItemDto, CancellationToken cancellationToken);
        Task DeleteAsync(int id, CancellationToken cancellationToken);
        Task<OrderItemDto> GetByIdAsync(int id, CancellationToken cancellationToken);
        Task<List<OrderItemDto>> GetByOrderIdAsync(int orderId, CancellationToken cancellationToken);
    }
}