using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;

namespace pokedex_web
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();
            dgvPokemons.DataSource = negocio.listarConSp();
            dgvPokemons.DataBind();
        }

        protected void dgvPokemons_PageIndexChanged(object sender, GridViewPageEventArgs e)
        {
            // con los datos que le cargamos al page load cambia y bildea de nuevo los datos
            dgvPokemons.PageIndex = e.NewPageIndex;
            dgvPokemons.DataBind();
        }
        protected void dgvPokemons_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = dgvPokemons.SelectedDataKey.Value.ToString();
            Response.Redirect("FormularioPokemon.aspx?id=" + id);
        }
    }
}