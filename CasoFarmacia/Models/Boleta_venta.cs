using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CasoFarmacia.Models
{
    public class Boleta_venta
    {

        public int IdBoleta { get; set; }
        public DateTime FechaEmision { get; set; }
        public int IdUsuario { get; set; }      
        public int TotalAPagar { get; set; }

    }
}
