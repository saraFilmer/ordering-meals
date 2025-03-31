using DAL.Models;
using Microsoft.EntityFrameworkCore;
using System;
//using static System.Runtime.InteropServices.JavaScript.JSType;

namespace DAL
{
    public class Customer_Dul: IDAL.Interface_Login<DTO.Dto_Customer>
    {
        //הגדרה  מראש כדי לחסוך את ההגדרה כל פונקציה מחדש 
        AwqContext db;
        public Customer_Dul()
        {
            this.db = new AwqContext();
        }
        public async Task<List<DTO.Dto_Customer>>SelectAll()
            {
                var q = await db.Customers.Include(b => b.Buys).ToListAsync();
                return Convert.ChangeCustomer.ToListCustomerDto(q);
            }

        public async Task<DTO.Dto_Customer>Add(DTO.Dto_Customer b)
        {
           Models.Customer c = Convert.ChangeCustomer.ToCustomer(b);
            db.Customers.Add(c);
            int x = await db.SaveChangesAsync();

            // Id -identity מחזיר את האוביקט לאחר ההוספה-עם 
            if (x > 0)
            {
                return  Convert.ChangeCustomer.ToCustomerDto(c);
            }
            else { 
                return null;}
        }
       
        public async Task<bool> Del(DTO.Dto_Customer b)
        {
             db.Customers.Remove(db.Customers.FirstOrDefault(x => x.Id == b.Id));
             var x= await db.SaveChangesAsync();
            return true;
               
        }
        public async Task<DTO.Dto_Customer> Put(DTO.Dto_Customer c)
        {
            Convert.ChangeCustomer.ToCustomer(c);
            var CNew = db.Customers.FirstOrDefault(x => x.Id == c.Id);
                if (CNew != null)
                {
                CNew.Name = c.Name;
                CNew.Amail = c.Amail;
                CNew.DateBorn = c.DateBorn;
                CNew.Phon = c.Phon;

            }
            var x = await db.SaveChangesAsync();
            return Convert.ChangeCustomer.ToCustomerDto(CNew);
          

            }
        //שליפת האןביקט הרצוי 
        //כשלא קיים מחזיר אוביקט חדש עם הנתונים 
       public async Task<DTO.Dto_Customer> login(string Name, string Amail)
        {
           var CNew = db.Customers.FirstOrDefault(x => x.Name == Name && x.Amail == Amail);
            if (CNew != null)
                return Convert.ChangeCustomer.ToCustomerDto(CNew);

            DTO.Dto_Customer c =new DTO.Dto_Customer();
            c.Name = Name;
            c.Amail = Amail;
            return c;
        }
    }
    }

  

