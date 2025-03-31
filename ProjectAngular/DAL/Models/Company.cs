using System;
using System.Collections.Generic;

namespace DAL.Models;

public partial class Company
{
    public int Id { get; set; }

    public string? NameCompany { get; set; }

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
