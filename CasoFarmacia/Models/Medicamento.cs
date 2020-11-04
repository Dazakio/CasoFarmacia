using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CasoFarmacia.Models
{
    public class Medicamento
    {
        public string Codigo_medicamento { get; set; }

        public string Nombre_medicamento { get; set; }

        public DateTime Fecha_vencimiento { get; set; }

        public int Precio_unitario { get; set; }

    }
}
