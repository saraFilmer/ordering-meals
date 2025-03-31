using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Dto_Buy
    {
            public int Id { get; set; }
            public int? IdCustomers { get; set; }
       
            public DateOnly? DateBuy { get; set; }

            public int? SumPrice { get; set; }

            public string? More { get; set; }
            public bool? Paid { get; set; }

        //שדה חדש שהוספנו
        public string NameCustomers { get; set; } 

    }
}
