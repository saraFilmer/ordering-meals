using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Convert
{
    internal class ChangeBuy
    {
        //להמיר אוביקט יחיד 
        public static DTO.Dto_Buy ToBuyDto(Models.Buy b)
        {
            DTO.Dto_Buy BNew = new DTO.Dto_Buy();
            BNew.DateBuy = b.DateBuy;
            BNew.More=b.More;
            BNew.SumPrice = b.SumPrice;
            BNew.IdCustomers = b.IdCustomers;
            BNew.Id=b.Id;
            BNew.Paid=b.Paid;
            if (b.IdCustomersNavigation != null)
                BNew.NameCustomers = b.IdCustomersNavigation.Name;

            
            return BNew;
        }
        //ממיר רשימה שלמה
        public static List<DTO.Dto_Buy> ToListBuyDto(List<Models.Buy> lb)
        {
            List<DTO.Dto_Buy> lnew = new List<DTO.Dto_Buy>();
            foreach (Models.Buy b in lb)
            {
                lnew.Add(ToBuyDto(b));
            }
            return lnew;
        }
        //ממיר אוביקט אחד בחזרה
        public static Models.Buy ToBuy(DTO.Dto_Buy b)
        {
            Models.Buy BNew = new Models.Buy();
            BNew.DateBuy = b.DateBuy;
            BNew.More = b.More;
            BNew.SumPrice = b.SumPrice;
            BNew.IdCustomers=b.IdCustomers;
            BNew.Id =b.Id;
            BNew.Paid = b.Paid;
            return BNew;
        }

    }
}
