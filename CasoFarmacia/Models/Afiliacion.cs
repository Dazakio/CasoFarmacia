using Microsoft.AspNetCore.Mvc;
using Microsoft.VisualBasic.CompilerServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Threading.Tasks;

namespace CasoFarmacia.Models
{
    public class Afiliacion
    {
        public string Codigo_salud { get; set; }
        public string Nombre_salud { get; set; }
        public double Descuento { get; set; }
    }
}
