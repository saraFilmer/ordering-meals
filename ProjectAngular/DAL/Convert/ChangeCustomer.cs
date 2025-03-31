using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Convert
{
    internal class ChangeCustomer
    {
        //להמיר אוביקט יחיד 
        public static DTO.Dto_Customer ToCustomerDto(Models.Customer c)
        {
            DTO.Dto_Customer CNew = new DTO.Dto_Customer();
            CNew.Amail = c.Amail;
           // CNew.Buys = c.Buys;
            CNew.DateBorn = c.DateBorn;
            CNew.Phon= c.Phon;
            CNew.Id= c.Id;
            CNew.Name= c.Name;
            return CNew;
        }
        //ממיר רשימה שלמה
        public static List<DTO.Dto_Customer> ToListCustomerDto(List<Models.Customer> lc)
        {
            List<DTO.Dto_Customer> lnew = new List<DTO.Dto_Customer>();
            foreach (Models.Customer c in lc)
            {
                lnew.Add(ToCustomerDto(c));
            }
            return lnew;
        }
        //ממיר אוביקט אחד בחזרה
        public static Models.Customer ToCustomer(DTO.Dto_Customer c)
        {
            Models.Buy BNew = new Models.Buy();
            Models.Customer CNew = new Models.Customer();
            CNew.Amail = c.Amail;
            CNew.DateBorn = c.DateBorn;
            CNew.Phon = c.Phon;
            CNew.Id= c.Id;
          CNew.Name= c.Name;
            return CNew;
            
        }

    }
}
