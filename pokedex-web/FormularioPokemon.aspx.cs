using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pokedex_web
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            // Aquí va la lógica cuando se hace clic en el botón "Aceptar"
            string id = txtId.Text;
            string nombre = txtNombre.Text;
            string numero = txtNumero.Text;
            string descripcion = TextBox1.Text;
            string tipoSeleccionado = ddlDebilidad.SelectedValue;
        }
    }
}