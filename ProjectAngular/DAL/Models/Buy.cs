using System;
using System.Collections.Generic;

namespace DAL.Models;

public partial class Buy
{
    public int Id { get; set; }

    public int? IdCustomers { get; set; }

    public DateOnly? DateBuy { get; set; }

    public int? SumPrice { get; set; }

    public string? More { get; set; }

    public bool? Paid { get; set; }

    public virtual ICollection<DetailsBuy> DetailsBuys { get; set; } = new List<DetailsBuy>();

    public virtual Customer? IdCustomersNavigation { get; set; }
}
