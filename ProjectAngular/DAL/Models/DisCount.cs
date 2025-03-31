using System;
using System.Collections.Generic;

namespace DAL.Models;

public partial class DisCount
{
    public int Id { get; set; }

    public double Count { get; set; }

    public string? TypeName { get; set; }
}
