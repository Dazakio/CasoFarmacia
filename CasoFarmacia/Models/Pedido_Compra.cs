using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CasoFarmacia.Models
{
    public class Pedido_Compra
    { 

        public int IdPedido { get; set; }

        public DateTime FechaEmision { get; set; }

        public DateTime FechaEntrega { get; set; }

        public int TotalPagar { get; set; }

        public int IdUsuario { get; set; }

        public int IdProveedor { get; set; }




    }
}
