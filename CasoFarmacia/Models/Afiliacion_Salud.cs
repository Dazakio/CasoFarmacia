using Microsoft.AspNetCore.Mvc;
using Microsoft.VisualBasic.CompilerServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Threading.Tasks;

namespace CasoFarmacia.Models
{
    public class Afiliacion_Salud
    {
        public int IdSalud { get; set; }
        public string NombreSalud { get; set; }
        public double Descuento { get; set; }
    }
}
