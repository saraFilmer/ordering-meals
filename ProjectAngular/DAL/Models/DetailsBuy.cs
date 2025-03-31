using System;
using System.Collections.Generic;

namespace DAL.Models;

public partial class DetailsBuy
{
    public int Id { get; set; }

    public int IdBuy { get; set; }

    public int Idproduct { get; set; }

    public int CountBuy { get; set; }

    public virtual Buy? IdBuyNavigation { get; set; }

    public virtual Product? IdproductNavigation { get; set; }
}
