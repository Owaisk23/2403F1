using System;
using System.Collections.Generic;

namespace FirstProject.Models;

public partial class Bike
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string Brand { get; set; } = null!;

    public string Price { get; set; } = null!;
}
