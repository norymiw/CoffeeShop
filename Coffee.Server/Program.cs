var builder = WebApplication.CreateBuilder(args);

// �������� ���:
builder.Services.AddControllers()
    .AddJsonOptions(options =>
    {
        options.JsonSerializerOptions.PropertyNamingPolicy = null; // ��������� ������� �������
    });

// ��������� CORS
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowAll", builder =>
        builder.AllowAnyOrigin()
               .AllowAnyMethod()
               .AllowAnyHeader());
});

var app = builder.Build();

app.UseCors("AllowAll"); // �������� ��� ������

app.MapControllers();
app.Run();