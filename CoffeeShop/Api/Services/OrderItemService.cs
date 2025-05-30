using CoffeeShop.Api.DataBase.Entities;
using CoffeeShop.Api.DataBase;
using CoffeeShop.Api.Dto;
using Microsoft.EntityFrameworkCore;

namespace CoffeeShop.Api.Services
{
    public class OrderItemService(AppDbContext dbContext) : IOrderItemService
    {
        public async Task<OrderItemDto> GetByIdAsync(int id, CancellationToken cancellationToken)
        {
            var orderItem = await dbContext.OrderItems
                .Include(oi => oi.MenuItem)
                .FirstOrDefaultAsync(oi => oi.Id == id, cancellationToken);

            return orderItem == null
                ? throw new KeyNotFoundException($"OrderItem with id {id} not found")
                : MapToDto(orderItem);
        }

        public async Task<List<OrderItemDto>> GetByOrderIdAsync(int orderId, CancellationToken cancellationToken)
        {
            return await dbContext.OrderItems
                .Where(oi => oi.OrderId == orderId)
                .Include(oi => oi.MenuItem)
                .Select(oi => MapToDto(oi))
                .ToListAsync(cancellationToken);
        }

        public async Task<OrderItemDto> CreateAsync(OrderItemDto orderItemDto, CancellationToken cancellationToken)
        {
            var orderItem = new OrderItem
            {
                Id = orderItemDto.Id,
                OrderId = orderItemDto.OrderId,
                MenuItemId = orderItemDto.MenuItemId,
                Quantity = orderItemDto.Quantity,
                ItemPrice = orderItemDto.ItemPrice
            };

            await dbContext.OrderItems.AddAsync(orderItem, cancellationToken);
            await dbContext.SaveChangesAsync(cancellationToken);

            return MapToDto(orderItem);
        }

        public async Task DeleteAsync(int id, CancellationToken cancellationToken)
        {
            var orderItem = await dbContext.OrderItems.FindAsync([id], cancellationToken);
            if (orderItem == null)
                throw new KeyNotFoundException($"OrderItem with id {id} not found");

            dbContext.OrderItems.Remove(orderItem);
            await dbContext.SaveChangesAsync(cancellationToken);
        }

        private static OrderItemDto MapToDto(OrderItem orderItem) => new()
        {
            Id = orderItem.Id,
            OrderId = orderItem.OrderId,
            MenuItemId = orderItem.MenuItemId,
            Quantity = orderItem.Quantity,
            ItemPrice = orderItem.ItemPrice
        };
    }
}