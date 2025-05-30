using CoffeeShop.Api.DataBase.Entities;
using CoffeeShop.Api.DataBase;
using CoffeeShop.Api.Dto;
using Microsoft.EntityFrameworkCore;

namespace CoffeeShop.Api.Services
{
    public class DeliveryAddressService(AppDbContext dbContext) : IDeliveryAddressService
    {
        public async Task<List<DeliveryAddressDto>> GetDeliveryAddressList(CancellationToken cancellationToken)
        {
            var res = await dbContext.DeliveryAddresses
                .Select(x => new DeliveryAddressDto { Id = x.Id, UserId = x.UserId, Address = x.Address, IsDefault = x.IsDefault })
                .ToListAsync(cancellationToken);
            return res;
        }

        public async Task<DeliveryAddressDto> CreateAsync(DeliveryAddressDto deliveryAddressDto, CancellationToken cancellationToken)
        {
            var deliveryAddress = new DeliveryAddress
            {
                Id = deliveryAddressDto.Id,
                UserId = deliveryAddressDto.UserId,
                Address = deliveryAddressDto.Address,
                IsDefault = deliveryAddressDto.IsDefault
            };

            await dbContext.DeliveryAddresses.AddAsync(deliveryAddress, cancellationToken);
            await dbContext.SaveChangesAsync(cancellationToken);

            return MapToDto(deliveryAddress);
        }

        public async Task DeleteAsync(int id, CancellationToken cancellationToken)
        {
            var deliveryAddress = await dbContext.DeliveryAddresses.FindAsync([id], cancellationToken);
            if (deliveryAddress == null)
                throw new KeyNotFoundException($"OrderItem with id {id} not found");

            dbContext.DeliveryAddresses.Remove(deliveryAddress);
            await dbContext.SaveChangesAsync(cancellationToken);
        }

        private static DeliveryAddressDto MapToDto(DeliveryAddress deliveryAddress) => new()
        {
            Id = deliveryAddress.Id,
            UserId = deliveryAddress.UserId,
            Address = deliveryAddress.Address,
            IsDefault = deliveryAddress.IsDefault
        };
    }
}

