using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CasoFarmacia.Models
{
    public class Venta
    {
        public string Codigo_venta { get; set; }
        public string Nombre_medciamento { get; set; }
        public string Descripcion_venta { get; set; }
        public int Cantidad_venta { get; set; }
        public int Total_venta { get; set; }
    }
}
