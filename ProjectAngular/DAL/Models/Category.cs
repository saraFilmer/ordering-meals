using System;
using System.Collections.Generic;

namespace DAL.Models;

public partial class Category
{
    public int Id { get; set; }

    public string? NameCategory { get; set; }

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
