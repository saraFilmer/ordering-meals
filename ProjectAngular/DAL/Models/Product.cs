using System;
using System.Collections.Generic;

namespace DAL.Models;

public partial class Product
{
    public int Id { get; set; }

    public string? Name { get; set; }

    public int? IdCategory { get; set; }

    public int? IdCompany { get; set; }

    public string? Description { get; set; }

    public int Price { get; set; }

    public string? Pic { get; set; }

    public int QuantityInStock { get; set; }

    public DateOnly? UpDate { get; set; }

    public virtual ICollection<DetailsBuy> DetailsBuys { get; set; } = new List<DetailsBuy>();

    public virtual Category? IdCategoryNavigation { get; set; }

    public virtual Company? IdCompanyNavigation { get; set; }
}
