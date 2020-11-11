using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CasoFarmacia.Models
{
    public class Usuario
    {

        public string IdUsuario { get; set; }
        public string RutUsuario { get; set; }

        public string Nombre { get; set; }

        public string Apellido { get; set; }

        public string Direccion { get; set; }

        public string Telefono { get; set; }

        public int IdSalud { get; set; }

    }
}
