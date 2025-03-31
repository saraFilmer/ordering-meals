using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

namespace DTO
{
    public class Dto_Product
    {
        public int Id { get; set; }

        public string? Name { get; set; }

        public int? IdCategory { get; set; }

        public int? IdCompany { get; set; }

        public string? Description { get; set; }

        public int Price { get; set; }

        public string? Pic { get; set; }

        public int QuantityInStock { get; set; }

        public DateOnly? UpDate { get; set; }

       //שדות חדשים 
        public string NameCategory {  get; set; }
        public string NameCompany { get; set; }
    }
}
