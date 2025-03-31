using DAL.Models;
using DTO;
using Microsoft.EntityFrameworkCore;
using System;
//using static System.Runtime.InteropServices.JavaScript.JSType;

namespace DAL
{
    public class Buy_Dal: IDAL.InterfaceDal_Basic<DTO.Dto_Buy>
    {
        //הגדרה  מראש כדי לחסוך את ההגדרה כל פונקציה מחדש 
        AwqContext db;
        public Buy_Dal()
        {
           this.db = new AwqContext();
        }


        public async Task<List<DTO.Dto_Buy>>SelectAll()
            {
                var q = await db.Buys.Include(b => b.IdCustomersNavigation).ToListAsync();
                return Convert.ChangeBuy.ToListBuyDto(q);
        }

             
        public async Task<DTO.Dto_Buy> Add(DTO.Dto_Buy b)
        {

            Models.Buy c = Convert.ChangeBuy.ToBuy(b);

            //תאריך
            DateTime dd=DateTime.Now;
            DateOnly dc=DateOnly.FromDateTime(dd);
            c.DateBuy = dc;

            db.Buys.Add(c);
            int x = await db.SaveChangesAsync();
            // Id -identity מחזיר את האוביקט לאחר ההוספה-עם 
           // if (x > 0) {
                Dto_Buy NBuy = Convert.ChangeBuy.ToBuyDto(c);
                NBuy.NameCustomers=b.NameCustomers;
              
               return NBuy;

         //   }
            //else
            //{
            //    return null;
            //}
        }
    
        public async Task<bool> Del(DTO.Dto_Buy b)
        {
             db.Buys.Remove(db.Buys.FirstOrDefault(x => x.Id == b.Id));
             var x= await db.SaveChangesAsync();
            return true;
               
        }
        public async Task<DTO.Dto_Buy> Put(DTO.Dto_Buy b)
        {
            Convert.ChangeBuy.ToBuy(b);
            var BNew = db.Buys.FirstOrDefault(x => x.Id == b.Id);
                if (BNew != null)
                {
                BNew.DateBuy = b.DateBuy;
                BNew.More = b.More;
                BNew.SumPrice = b.SumPrice;
                BNew.IdCustomers= b.IdCustomers;
                BNew.Id= b.Id;
                BNew.Paid=b.Paid;
            }
            var x = await db.SaveChangesAsync();
            
                Dto_Buy bNew = Convert.ChangeBuy.ToBuyDto(BNew);
                bNew.NameCustomers = b.NameCustomers;
                //return Convert.ChangeBuy.ToBuyDto(BNew);
                return bNew;
            }
           
        
    }

    }

