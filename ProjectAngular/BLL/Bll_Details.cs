using DAL.Models;
using DTO;

namespace BLL
{
    public class Bll_Details : IBLL.InterfaceBll_SumPrice<DTO.Dto_DetailsBuy>
        //הגדרת מאפין סטטי והכנסתו בבנאי
    {
        IDAL.InterfaceDal_Details<DTO.Dto_DetailsBuy> d;
        AwqContext db;
        
           
        public Bll_Details(IDAL.InterfaceDal_Details<DTO.Dto_DetailsBuy> details)
        {
            this.d = details;
            this.db = new AwqContext();
        
        }
        public async Task<List<DTO.Dto_DetailsBuy>> SelectAll()
        {
            return await d.SelectAll();
        }
        public async Task<DTO.Dto_DetailsBuy> Add(DTO.Dto_DetailsBuy details)
        {
            var x = await d.Add(details);
            return x;

        }
        public async Task<bool> Del(DTO.Dto_DetailsBuy details)
        {
            return await d.Del(details);

        }
        public async Task<DTO.Dto_DetailsBuy> Put(DTO.Dto_DetailsBuy details) {
            return await d.Put(details);
        }

        //מחשב את הסכום לתשלום בשביל עדכון הקניה
        public async Task<double> sum(List<Dto_DetailsBuy> l)
        {
            double sum = 0;
            for (int i = 0; i < l.Count; i++)
            {
                sum += (l[i].CountBuy * l[i].PriceProduct);
            }
            //יש להוסיף הנחה לפי תאריך לידה
           DAL.Models.Buy IdBuy= db.Buys.FirstOrDefault(x => x.Id == l[0].IdBuy);
           DAL.Models.Customer cust = db.Customers.FirstOrDefault(x => x.Id == IdBuy.IdCustomers);

            //תאריך
            DateTime dd = DateTime.Now;
            DateOnly dc = DateOnly.FromDateTime(dd);

           DAL.Models. DisCount disCountB = db.DisCounts.FirstOrDefault(x => x.TypeName == "birthday");
            DAL.Models.DisCount disCountM = db.DisCounts.FirstOrDefault(x => x.TypeName == "more300");

            if (sum > 300)
                //  sum = sum-(sum/(disCountM.Count/100));
                sum = sum - (sum * disCountM.Count);

            if (cust != null && cust.DateBorn.Value.Month ==dc.Month)
            {
                sum = sum-(sum*disCountB.Count);
            }
            return sum;
        }

        public async Task<List<DTO.Dto_DetailsBuy>> AddList(List<DTO.Dto_DetailsBuy> t)
        {
            return await d.AddList(t);
        }

    }
}    

