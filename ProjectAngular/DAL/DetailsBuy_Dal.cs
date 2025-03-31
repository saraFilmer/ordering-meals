using DAL.Models;
using DTO;
using Microsoft.EntityFrameworkCore;
using System;
namespace DAL
{
    public class Detaisl_Dal: IDAL.InterfaceDal_Details<DTO.Dto_DetailsBuy>
    { //הגדרה  מראש כדי לחסוך את ההגדרה כל פונקציה מחדש 
        AwqContext db;
        public Detaisl_Dal()
        {
            this.db = new AwqContext();
        }

        public async Task<List<DTO.Dto_DetailsBuy>>SelectAll()
            {
            var q = await db.DetailsBuys.Include(c => c.IdproductNavigation).ToListAsync();
                return Convert.ChangeDetailsBuy.ToListDatailsDto(q);
            }

        public async Task<DTO.Dto_DetailsBuy> Add(DTO.Dto_DetailsBuy d)
        {

            Models.DetailsBuy c = Convert.ChangeDetailsBuy.ToDatails(d);
            db.DetailsBuys.Add(c);
            int x = await db.SaveChangesAsync();
           // Id - identity מחזיר את האוביקט לאחר ההוספה - עם
        //if (x > 0)
        //    {
                //לעדכון שדות מטבלה אחרת
                Dto_DetailsBuy NDetails = Convert.ChangeDetailsBuy.ToDatailsDto(c);
                NDetails.NameProduct=d.NameProduct;
                NDetails.PriceProduct=d.PriceProduct;
            NDetails.DescriptionProduct=d.DescriptionProduct;
                //מציאת המוצר ועדכנת הכמות שלו
                Models.Product p=  db.Products.FirstOrDefault(p1 => p1.Id == d.Idproduct);
                //כשחסר במלאי מורידים מפרטי הקניה
                if (p.QuantityInStock < d.CountBuy)
                    NDetails.CountBuy = p.QuantityInStock;
                p.QuantityInStock -= NDetails.CountBuy;

               db.Products.Update(p);
                int y = await db.SaveChangesAsync();

                return NDetails;                     
        }

        public async Task <List<DTO.Dto_DetailsBuy>> AddList(List<DTO.Dto_DetailsBuy> dl)
        {
            List<DTO.Dto_DetailsBuy> ndl=new List<DTO.Dto_DetailsBuy>();
            foreach (var d in dl)
            {

                Models.DetailsBuy c = Convert.ChangeDetailsBuy.ToDatails(d);

                db.DetailsBuys.Add(c);
                int x = await db.SaveChangesAsync();
                // Id - identity מחזיר את האוביקט לאחר ההוספה - עם
                //if (x > 0)
                //    {
                //לעדכון שדות מטבלה אחרת
                Dto_DetailsBuy NDetails = Convert.ChangeDetailsBuy.ToDatailsDto(c);
                NDetails.NameProduct = d.NameProduct;
                NDetails.PriceProduct = d.PriceProduct;
                NDetails.DescriptionProduct = d.DescriptionProduct;
                //מציאת המוצר ועדכנת הכמות שלו
                Models.Product p = db.Products.FirstOrDefault(p1 => p1.Id == d.Idproduct);
                //כשחסר במלאי מורידים מפרטי הקניה
                if (p.QuantityInStock < d.CountBuy)
                    NDetails.CountBuy = p.QuantityInStock;
                p.QuantityInStock -= NDetails.CountBuy;

                db.Products.Update(p);
                int y = await db.SaveChangesAsync();

               ndl.Add(NDetails);
            }
            return ndl;
        }

            //public async Task<Dto_DetailsBuy> Add(DTO.Dto_DetailsBuy d)
            //{
            //    var newDetail = Convert.ChangeDetailsBuy.ToDatails(d);

            //    db.DetailsBuys.Add(newDetail);
            //    await db.SaveChangesAsync();
            //    return Convert.ChangeDetailsBuy.ToDatailsDto(newDetail);  // מחזיר את האובייקט שנשמר
            //}


            public async Task<bool> Del(DTO.Dto_DetailsBuy d)
        {
             db.DetailsBuys.Remove(db.DetailsBuys.FirstOrDefault(x => x.Id == d.Id));
             var x= await db.SaveChangesAsync();
            return true;
               
        }

        public async Task<DTO.Dto_DetailsBuy>Put(DTO.Dto_DetailsBuy d)
        {
            Convert.ChangeDetailsBuy.ToDatails(d);

            var DNew = db.DetailsBuys.FirstOrDefault(x => x.Id == d.Id);
                if (DNew != null)
                {
                DNew.CountBuy = d.CountBuy;
                DNew.IdBuy = d.IdBuy;
                DNew.Idproduct = d.Idproduct;
            }
                //תאריך
            //   DateTime dd=DateTime.Now;
            //DateOnly dc=DateOnly.FromDateTime(dd);
            //o.date=dc


            var x = await db.SaveChangesAsync();

            return  Convert.ChangeDetailsBuy.ToDatailsDto(DNew);

            }

    }

    }

