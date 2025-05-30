using CoffeeShop.Api.DataBase.Entities;
using CoffeeShop.Api.DataBase;
using CoffeeShop.Api.Dto;
using Microsoft.EntityFrameworkCore;

namespace CoffeeShop.Api.Services
{
    public class OrderService(AppDbContext dbContext) : IOrderService
    {
        public async Task<List<OrderDto>> GetOrderList(CancellationToken cancellationToken)
        {
            var res = await dbContext.Orders
                .Select(x => new OrderDto { Id = x.Id, UserId = x.UserId, OrderDate = x.OrderDate, Status = x.Status, TotalPrice = x.TotalPrice, DeliveryAddress = x.DeliveryAddress })
                .ToListAsync(cancellationToken);
            return res;
        }

        public async Task<OrderDto> CreateAsync(OrderDto orderDto, CancellationToken cancellationToken)
        {
            var order = new Order
            {
                Id = orderDto.Id,
                UserId = orderDto.UserId,
                OrderDate = orderDto.OrderDate,
                Status = orderDto.Status,
                TotalPrice = orderDto.TotalPrice,
                DeliveryAddress = orderDto.DeliveryAddress
            };

            await dbContext.Orders.AddAsync(order, cancellationToken);
            await dbContext.SaveChangesAsync(cancellationToken);

            return MapToDto(order);
        }

        public async Task DeleteAsync(int id, CancellationToken cancellationToken)
        {
            var order = await dbContext.Orders.FindAsync([id], cancellationToken);
            if (order == null)
                throw new KeyNotFoundException($"OrderItem with id {id} not found");

            dbContext.Orders.Remove(order);
            await dbContext.SaveChangesAsync(cancellationToken);
        }

        private static OrderDto MapToDto(Order order) => new()
        {
            Id = order.Id,
            UserId = order.UserId,
            OrderDate = order.OrderDate,
            Status = order.Status,
            TotalPrice = order.TotalPrice,
            DeliveryAddress = order.DeliveryAddress
        };
    }
}
