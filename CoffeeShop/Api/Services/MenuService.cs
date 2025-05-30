using CoffeeShop.Api.DataBase;
using CoffeeShop.Api.DataBase.Entities;
using CoffeeShop.Api.Dto;
using Microsoft.EntityFrameworkCore;

public class MenuService(AppDbContext dbContext) : IMenuService
{
    public async Task<List<MenuDto>> GetMenuList(CancellationToken cancellationToken)
    {
        var res = await dbContext.MenuItems
            .Select(x => new MenuDto { Id = x.Id, Name = x.Name, Description = x.Description, Price = x.Price, Category = x.Category, Calories = x.Calories })
            .ToListAsync(cancellationToken);
        return res;
    }

    public async Task<MenuDto> CreateAsync(MenuDto menuDto, CancellationToken cancellationToken)
    {
        var menu = new MenuItem
        {
            Id = menuDto.Id,
            Name = menuDto.Name,
            Description = menuDto.Description,
            Price = menuDto.Price,
            Category = menuDto.Category,
            Calories = menuDto.Calories
        };

        await dbContext.MenuItems.AddAsync(menu, cancellationToken);
        await dbContext.SaveChangesAsync(cancellationToken);

        return MapToDto(menu);
    }

    public async Task DeleteAsync(int id, CancellationToken cancellationToken)
    {
        var menu = await dbContext.MenuItems.FindAsync([id], cancellationToken);
        if (menu == null)
            throw new KeyNotFoundException($"OrderItem with id {id} not found");

        dbContext.MenuItems.Remove(menu);
        await dbContext.SaveChangesAsync(cancellationToken);
    }

    public async Task<List<MenuDto>> GetCategoryList(string category, CancellationToken cancellationToken)
    {
        return await dbContext.MenuItems
                .Where(oi => oi.Category == category)
                .Select(oi => MapToDto(oi))
                .ToListAsync(cancellationToken);
    }

    private static MenuDto MapToDto(MenuItem menu) => new()
    {
        Id = menu.Id,
        Name = menu.Name,
        Description = menu.Description,
        Price = menu.Price,
        Category = menu.Category,
        Calories = menu.Calories
    };
}
