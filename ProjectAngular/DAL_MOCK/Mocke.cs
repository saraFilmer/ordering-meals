using DTO;
using DAL.Models;
namespace DAL_MOCK
{
    public class Mocke:IDAL.InterfaceDal_Basic<Dto_Product>
    {
        public static List<Dto_Product> lp = new List<Dto_Product>();
        public static List<DAL.Models.Category> lcat = new List<Category>();
        public static List<DAL.Models.Company> lcam = new List<Company>();

        
        static Mocke()
        {
            lcam.Add(new DAL.Models.Company{Id=1,NameCompany="aaaa"});
            lcam.Add(new DAL.Models.Company { Id = 1, NameCompany = "aaaa" });
            lcam.Add(new DAL.Models.Company { Id = 2, NameCompany = "bbb" });
            lcam.Add(new DAL.Models.Company { Id = 3, NameCompany = "cccc" });

            lcat.Add(new DAL.Models.Category { Id = 1, NameCategory = "dddd" });
            lcat.Add(new DAL.Models.Category { Id = 2, NameCategory = "eeee" });
            lcat.Add(new DAL.Models.Category { Id = 3, NameCategory = "fff" });
            lcat.Add(new DAL.Models.Category { Id = 4, NameCategory = "gggg" });


            lp.Add(new Dto_Product() { Id = 1, Name = "", Description = "", Price = 1000, NameCategory = lcat[1].NameCategory, NameCompany = lcam[1].NameCompany, QuantityInStock = 1 });
            lp.Add(new Dto_Product() { Id = 1, Name = "", Description = "", Price = 1000, NameCategory = lcat[2].NameCategory, NameCompany = lcam[2].NameCompany, QuantityInStock = 1 });
            lp.Add(new Dto_Product() { Id = 1, Name = "", Description = "", Price = 1000, NameCategory = lcat[2].NameCategory, NameCompany = lcam[3].NameCompany, QuantityInStock = 1 });
            lp.Add(new Dto_Product() { Id = 1, Name = "", Description = "", Price = 1000, NameCategory = lcat[3].NameCategory, NameCompany = lcam[3].NameCompany, QuantityInStock = 1 });

        }

        public async Task<Dto_Product> Add(Dto_Product t)
        {
            lp.Add(t);
            return t;
        }

        public async Task<List<Dto_Product>> SelectAll()
        {
            return lp;
        }

        public async Task<DTO.Dto_Product> Put(DTO.Dto_Product p)
        {
           
            var  PNew = lp.FirstOrDefault(x => x.Id == p.Id);
            if (PNew != null)
            {
                PNew.Name = p.Name;
                PNew.Description = p.Description;
                PNew.Price = p.Price;
                PNew.UpDate = p.UpDate;
                PNew.NameCompany = p.NameCompany;
                PNew.NameCategory = p.NameCategory;
                PNew.Pic = p.Pic;
                PNew.QuantityInStock = p.QuantityInStock;

            }
            
            return PNew;

        }
        public async Task<bool> Del(Dto_Product t)
        {
           return lp.Remove(t);
            
        }


    }
}
