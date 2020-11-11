using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CasoFarmacia.Models
{
    public class Medicamento
    {

        public int IdMedicamento { get; set; }

        public string NombreMedicamento { get; set; }

        public DateTime FechaVencimiento { get; set; }

        public int PrecioUnitarioVenta { get; set; }

        public int PrecioUnitarioCosto { get; set; }


    }
}
