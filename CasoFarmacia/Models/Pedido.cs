using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CasoFarmacia.Models
{
    public class Pedido
    {
        public string Codigo_pedido { get; set; }
        public string Descripcion_pedido { get; set; }
        public DateTime Fecha_entrega { get; set; }
        public int Cantidad_pedido { get; set; }
        public int Total_pago { get; set; }
    }
}
