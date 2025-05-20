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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();
            try
            {
                if (!IsPostBack)
                {
                    //obtengo los datos y los guardo en sesion
                    List<Pokemon> listaPokemon = negocio.listarConSp();
                    Session["listaPokemon"] = listaPokemon;

                    List<Elemento> listaTipo = negocio.tipos();
                    // config el desplegable desd db con id y descripcion 
                    ddlTipos.DataSource = listaTipo;
                    ddlTipos.DataTextField = "Descripcion";
                    ddlTipos.DataValueField = "Id";
                    ddlTipos.DataBind();
                }
            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
            }
        }

        protected void ddlTipos_SelectedIndexChanged(object sender,EventArgs e)
        {
            int id = int.Parse(ddlTipos.SelectedValue);
            ddlPokemonsFiltrados.DataSource = ((List<Pokemon>)Session["listaPokemon"]).FindAll(x => x.Tipo.Id == id);
            ddlPokemonsFiltrados.DataTextField = "Nombre";
            ddlPokemonsFiltrados.DataBind();
        }
    }
}