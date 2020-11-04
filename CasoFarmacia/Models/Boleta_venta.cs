using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CasoFarmacia.Models
{
    public class Boleta_venta
    {

        public string Codigo_boleta { get; set; }
        public DateTime Fecha_emision { get; set; }
        public string Descripcion { get; set; }

        public int Cantidad_medicamento { get; set; }
        public int Total_pagar { get; set; }

    }
}
