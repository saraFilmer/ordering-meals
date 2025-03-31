using DAL.Models;
using Microsoft.EntityFrameworkCore;
using System;
//using static System.Runtime.InteropServices.JavaScript.JSType;

namespace DAL
{
    public class Category_Dal: IDAL.InterfaceDal_Basic<DTO.Dto_Category>
    {
        //הגדרה  מראש כדי לחסוך את ההגדרה כל פונקציה מחדש 
        AwqContext db;
        public Category_Dal()
        {
            this.db = new AwqContext();
        }
        public async Task<List<DTO.Dto_Category>>SelectAll()
            {
                
               var q = await db.Categories.ToListAsync();
                return Convert.ChangeCategory.ToListCategoryDto(q);
            }

        public async Task<DTO.Dto_Category> Add(DTO.Dto_Category b)
        {
            db.Categories.Add(Convert.ChangeCategory.ToCategory(b));
            int x = await db.SaveChangesAsync();
            return b;
        }
       
        public async Task<bool> Del(DTO.Dto_Category b)
        {
             db.Categories.Remove(db.Categories.FirstOrDefault(x => x.Id == b.Id));
             var x= await db.SaveChangesAsync();
            return true;
               
        }
        public async Task<DTO.Dto_Category> Put(DTO.Dto_Category b)
        {
            Convert.ChangeCategory.ToCategory(b);
            var CNew = db.Categories.FirstOrDefault(x => x.Id == b.Id);
                if (CNew != null)
                {
               CNew.NameCategory=b.NameCategory;
            }
            var x = await db.SaveChangesAsync();
            return Convert.ChangeCategory.ToCategoryDto(CNew);
          

            }
        

    }

    }

