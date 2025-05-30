using CoffeeShop.Api.Dto;

namespace CoffeeShop.Api.Services
{
    public interface IDeliveryAddressService
    {
        Task<DeliveryAddressDto> CreateAsync(DeliveryAddressDto deliveryAddressDto, CancellationToken cancellationToken);
        Task DeleteAsync(int id, CancellationToken cancellationToken);
        Task<List<DeliveryAddressDto>> GetDeliveryAddressList(CancellationToken cancellationToken);
    }
}