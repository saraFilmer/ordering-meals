using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Convert
{
    internal class ChangeProduct
    {
        //להמיר אוביקט יחיד 
        public static DTO.Dto_Product ToProductDto(Models.Product p)
        {
            DTO.Dto_Product PNew = new DTO.Dto_Product();
            PNew.Name=p.Name;
            PNew.Description=p.Description;
            PNew.Price=p.Price;
            PNew.UpDate=p.UpDate;
            PNew.IdCategory = p.IdCategory;
            PNew.IdCompany = p.IdCompany;
            PNew.Pic=p.Pic;

            PNew.Id=p.Id;

            PNew.QuantityInStock=p.QuantityInStock;
            if (p.IdCompanyNavigation != null)
                PNew.NameCompany = p.IdCompanyNavigation.NameCompany;
            if (p.IdCategoryNavigation != null)
                PNew.NameCategory = p.IdCategoryNavigation.NameCategory;
            return PNew;
        }
        //ממיר רשימה שלמה
        public static List<DTO.Dto_Product> ToListProductDto(List<Models.Product> lc)
        {
            List<DTO.Dto_Product> lnew = new List<DTO.Dto_Product>();
            foreach (Models.Product c in lc)
            {
                lnew.Add(ToProductDto(c));
            }
            return lnew;
        }
        //ממיר אוביקט אחד בחזרה
        public static Models.Product ToProduct(DTO.Dto_Product p)
        {
            Models.Product PNew = new Models.Product();
            PNew.Name = p.Name;
            PNew.Description = p.Description;
            PNew.Price = p.Price;
            PNew.UpDate = p.UpDate;
            PNew.IdCategory = p.IdCategory;
            PNew.IdCompany = p.IdCompany;
            PNew.Pic = p.Pic;
            //צריך??????????..
            PNew.Id = p.Id;

            PNew.QuantityInStock = p.QuantityInStock;
                                                          
            return PNew;
        }

    }
}
