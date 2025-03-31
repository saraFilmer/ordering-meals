using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Convert
{
    internal class ChangeDetailsBuy
    {
        //להמיר אוביקט יחיד 
        public static DTO.Dto_DetailsBuy ToDatailsDto(Models.DetailsBuy d)
        {
            DTO.Dto_DetailsBuy DNew = new DTO.Dto_DetailsBuy();
            DNew.CountBuy = d.CountBuy;
            DNew.IdBuy = d.IdBuy;
            DNew.Idproduct = d.Idproduct;
            DNew.Id=d.Id;
            if (d.IdproductNavigation != null)
            {
                DNew.NameProduct = d.IdproductNavigation.Name;
                DNew.PriceProduct = d.IdproductNavigation.Price;
                DNew.DescriptionProduct = d.IdproductNavigation.Description;
            }


            return DNew;
        }
        //ממיר רשימה שלמה
        public static List<DTO.Dto_DetailsBuy> ToListDatailsDto(List<Models.DetailsBuy> ld)
        {
            List<DTO.Dto_DetailsBuy> lnew = new List<DTO.Dto_DetailsBuy>();
            foreach (Models.DetailsBuy d in ld)
            {
                lnew.Add(ToDatailsDto(d));
            }
            return lnew;
        }
        //ממיר אוביקט אחד בחזרה
        public static Models.DetailsBuy ToDatails(DTO.Dto_DetailsBuy d)
        {
            Models.DetailsBuy DNew = new Models.DetailsBuy();
            DNew.CountBuy = d.CountBuy;
            DNew.IdBuy = d.IdBuy;
            DNew.Idproduct = d.Idproduct;
            DNew.Id = d.Id;
            return DNew;
        }

    }
}
