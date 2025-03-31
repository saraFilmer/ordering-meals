using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Dto_Customer
    {
        public int Id { get; set; }

        public string? Name { get; set; }

        public string? Phon { get; set; }

        public string? Amail { get; set; }

        public DateOnly? DateBorn { get; set; }



    }
}
