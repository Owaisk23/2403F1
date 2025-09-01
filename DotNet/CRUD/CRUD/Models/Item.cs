using System;
using System.Collections.Generic;

namespace CRUD.Models;

public partial class Item
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string Desc { get; set; } = null!;

    public string Image { get; set; } = null!;

    public int Price { get; set; }

    public int CatId { get; set; }

    public virtual Category Cat { get; set; } = null!;
}
