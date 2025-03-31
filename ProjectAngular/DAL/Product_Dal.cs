using DAL.Models;
using DTO;
using Microsoft.EntityFrameworkCore;
using System;
//using System.Collections.Generic;
//using static System.Runtime.InteropServices.JavaScript.JSType;

namespace DAL
{
    public class Product_Dal : IDAL.InterfaceDal_Filter<DTO.Dto_Product>
    {
        //הגדרה  מראש כדי לחסוך את ההגדרה כל פונקציה מחדש 
        AwqContext db;
        public Product_Dal()
        {
            this.db = new AwqContext();
        }
        public async Task<List<DTO.Dto_Product>> SelectAll()
        {
            var q = await db.Products.Include(c => c.IdCategoryNavigation).Include(c1 => c1.IdCompanyNavigation).ToListAsync();
            List< Dto_Product> q2 =Convert.ChangeProduct.ToListProductDto(q);

            //var sortQ=q2.OrderByDescending(p=>p.QuantityInStock).ToList();
            //var first50=sortQ.Take(50).ToList();
            var sortQ = q2.FindAll(x => x.Name.StartsWith('-'));
            //return first50;
            return sortQ;
        }
                                                                   
        public async Task<DTO.Dto_Product> Add(DTO.Dto_Product c)
        {
            db.Products.Add(Convert.ChangeProduct.ToProduct(c));
            int x = await db.SaveChangesAsync();
            return c;
        }

        public async Task<bool> Del(DTO.Dto_Product c)
        {
            db.Products.Remove(db.Products.FirstOrDefault(x => x.Id == c.Id));
            var x = await db.SaveChangesAsync();
            return true;

        }
        public async Task<DTO.Dto_Product> Put(DTO.Dto_Product p)
        {
           // Convert.ChangeProduct.ToProduct(p);

            var PNew = db.Products.FirstOrDefault(x => x.Id == p.Id);
            if (PNew != null)
            {
                PNew.Name = p.Name;
                PNew.Description = p.Description;
                PNew.Price = p.Price;
                PNew.UpDate = p.UpDate;
                PNew.IdCategory = p.IdCategory;
                PNew.IdCompany = p.IdCompany;
                PNew.Pic = p.Pic;
                PNew.QuantityInStock = p.QuantityInStock;
            }
            var x = await db.SaveChangesAsync();

            DTO.Dto_Product pNew=Convert.ChangeProduct.ToProductDto(PNew);
            pNew.NameCategory=p.NameCategory;
            pNew.NameCompany=p.NameCompany;
            // return Convert.ChangeProduct.ToProductDto(PNew);
            return pNew;

        }
        //סינון לפי ערכים מסוימים (לא חובה שיזומנו כולם ) והחזרתם 
        public async Task<List<DTO.Dto_Product>> FilterAsync(string? nameCategory,string? nameCampany, int? price)
        {
            var q = await db.Products.Include(c => c.IdCategoryNavigation).Include(c1 => c1.IdCompanyNavigation).ToListAsync();

            List<DTO.Dto_Product> filteredList = Convert.ChangeProduct.ToListProductDto(q);

            if (nameCategory != null)
            {
                filteredList = filteredList.Where(c => c.NameCategory == nameCategory).ToList();
            }
            if (nameCampany != null)
            {
                filteredList=filteredList.Where(c=>c.NameCompany==nameCampany).ToList();
            }
           

            if (price !=null)
                filteredList = filteredList.Where(c => c.Price <= price).ToList();
            
             return  filteredList ;

        }
    }
    }

