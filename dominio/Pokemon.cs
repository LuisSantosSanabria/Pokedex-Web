﻿using System;
using System.Collections.Generic;
using System.ComponentModel; //para el displayName
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Pokemon
    {
        public int Id { get; set; }
        [DisplayName("Número")] // cambiar nombre /arriba pa poner tilde o espacio //annotation
        public int Numero { get; set; }
        public string Nombre { get; set; }
        [DisplayName("Descripción")]
        public string Descripcion { get; set; }
        public string UrlImagen { get; set; }
        public Elemento Tipo { get; set; }
        public Elemento Debilidad { get; set; }

    }
}
