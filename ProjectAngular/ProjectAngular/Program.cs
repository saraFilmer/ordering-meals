using IDAL;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

//הזרקה קישור למסד
builder.Services.AddDbContext<DAL.Models.AwqContext>
(options =>
options.UseSqlServer(builder.Configuration.GetConnectionString("MyConnection")));


//DependencyInjection  -הזרקת התלויות 
builder.Services.AddScoped<IDAL.InterfaceDal_Filter<DTO.Dto_Product>, DAL.Product_Dal>();
builder.Services.AddScoped<IBLL.InterfaceBll_Filter<DTO.Dto_Product>, BLL.Bll_Product>();


builder.Services.AddScoped<IDAL.InterfaceDal_Basic<DTO.Dto_Buy>, DAL.Buy_Dal>();
builder.Services.AddScoped<IBLL.InterfaceBll_Basic<DTO.Dto_Buy>, BLL.Bll_Buy>();

builder.Services.AddScoped<IDAL.InterfaceDal_Details<DTO.Dto_DetailsBuy>, DAL.Detaisl_Dal>();
builder.Services.AddScoped<IBLL.InterfaceBll_SumPrice<DTO.Dto_DetailsBuy>, BLL.Bll_Details>();

builder.Services.AddScoped<IDAL.Interface_Login<DTO.Dto_Customer>, DAL.Customer_Dul>();
builder.Services.AddScoped<IBLL.InterfaceBll_Login<DTO.Dto_Customer>, BLL.Bll_Customer>();

builder.Services.AddScoped<IDAL.InterfaceDal_Basic<DTO.Dto_Category>, DAL.Category_Dal>();
builder.Services.AddScoped<IBLL.InterfaceBll_Basic<DTO.Dto_Category>, BLL.Bll_Category>();

builder.Services.AddScoped<IDAL.InterfaceDal_Basic<DTO.Dto_Campany>, DAL.Campany_Dal>();
builder.Services.AddScoped<IBLL.InterfaceBll_Basic<DTO.Dto_Campany>, BLL.Bll_Campany>();

//נזריק את המחלקה הבאהunittest בשלב בדיקות היחידה 
//builder.Services.AddScoped<IDAL.IDalInterface<DTO.Dto_Product>, DAL_MOCK.Mocke>();
//הרשאת גישה
builder.Services.AddCors(opotion => opotion.AddPolicy("AllowAll",//נתינת שם להרשאה
    p => p.AllowAnyOrigin()//מאפשר כל מקור
    .AllowAnyMethod()//כל מתודה - פונקציה
    .AllowAnyHeader()));//וכל כותרת פונקציה
//כדי לשמור על מבנה של אותיות גדולות בדיוק כמו המחלקה
builder.Services.AddControllers()
           .AddJsonOptions(opts => opts.JsonSerializerOptions.PropertyNamingPolicy = null);

var app = builder.Build();
app.UseCors("AllowAll");




// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
