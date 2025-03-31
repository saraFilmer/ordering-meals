using DAL.Models;
using Microsoft.EntityFrameworkCore;
using System;

namespace DAL
{ 
    public class Campany_Dal: IDAL.InterfaceDal_Basic<DTO.Dto_Campany>
    {
        //הגדרה  מראש כדי לחסוך את ההגדרה כל פונקציה מחדש 
        AwqContext db;
        public Campany_Dal()
        {
            this.db = new AwqContext();
        }

        public async Task<List<DTO.Dto_Campany>>SelectAll()
            {
                
               var q = await db.Companies.ToListAsync();
                return Convert.ChangeCampany.ToListCampanyDto(q);
            }

        public async Task<DTO.Dto_Campany> Add(DTO.Dto_Campany c)
        {
            using (AwqContext db=new AwqContext())
            {
                var com=Convert.ChangeCampany.ToCampany(c);
                db.Companies.Add(com);
                await db.SaveChangesAsync();
                return Convert.ChangeCampany.ToCampanyDto(com);
            }
        }


        public async Task<bool> Del(DTO.Dto_Campany b)
        {
             db.Companies.Remove(db.Companies.FirstOrDefault(x => x.Id == b.Id));
             var x= await db.SaveChangesAsync();
            return true;              
        }

        public async Task<DTO.Dto_Campany> Put(DTO.Dto_Campany b)
        {
            Convert.ChangeCampany.ToCampany(b);
            var CNew = db.Companies.FirstOrDefault(x => x.Id == b.Id);
                if (CNew != null)
                {
               CNew.NameCompany=b.NameCompany;
            }
            var x = await db.SaveChangesAsync();
            return Convert.ChangeCampany.ToCampanyDto(CNew);
          

            }
        

    }

    }

