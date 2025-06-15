using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace pokedex_web
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtId.Enabled = false;
            try
            {
                if (!IsPostBack)
                {
                    /* cargar datos tipo y debiliad*/
                    ElementoNegocio negocio = new ElementoNegocio();
                    List<Elemento> lista = negocio.listar();

                    ddlTipos.DataSource = lista;
                    ddlTipos.DataValueField = "id";
                    ddlTipos.DataTextField = "Descripcion";
                    ddlTipos.DataBind();

                    ddlDebilidad.DataSource = lista;
                    ddlDebilidad.DataValueField = "id";
                    ddlDebilidad.DataTextField = "Descripcion";
                    ddlDebilidad.DataBind();
                }
            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
                throw;
                //redireccion pantalla de erore en el futuro
            }

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            /* Aquí va la lógica cuando se hace clic en el botón "Aceptar"
            string id = txtId.Text;
            string nombre = txtNombre.Text;
            string numero = txtNumero.Text;
            string descripcion = TextBox1.Text;
            string tipoSeleccionado = ddlDebilidad.SelectedValue; */

            try
            {
                Pokemon nuevo = new Pokemon();
                PokemonNegocio negocio = new PokemonNegocio();
                nuevo.Numero = int.Parse(txtNumero.Text);
                nuevo.Nombre = txtNombre.Text;
                nuevo.Descripcion = txtDescripcion.Text;
                nuevo.UrlImagen = txtImagenUrl.Text;

                nuevo.Tipo = new Elemento();
                nuevo.Tipo.Id = int.Parse(ddlTipos.SelectedValue);
                nuevo.Debilidad = new Elemento();
                nuevo.Debilidad.Id = int.Parse(ddlDebilidad.SelectedValue);

                negocio.agregar(nuevo);
                Response.Redirect("PokemonsLista.aspx", false);
            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
                throw;
            }
        }

        protected void txtImagenUrl_TextChanged(object sender, EventArgs e)
        {
            imgPokemon.ImageUrl = txtImagenUrl.Text;
        }
    }
}