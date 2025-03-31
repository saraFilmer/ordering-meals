using System;
using System.Collections.Generic;

namespace DAL.Models;

public partial class Customer
{
    public int Id { get; set; }

    public string? Name { get; set; }

    public string? Phon { get; set; }

    public string? Amail { get; set; }

    public DateOnly? DateBorn { get; set; }

    public virtual ICollection<Buy> Buys { get; set; } = new List<Buy>();
}
