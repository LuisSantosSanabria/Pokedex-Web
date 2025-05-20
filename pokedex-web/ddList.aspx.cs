using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
namespace pokedex_web
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio pokemonNegocio = new PokemonNegocio();
            try
            {
                if (!IsPostBack)
                {
                    //desplegable Db
                    ddlPokemons.DataSource = pokemonNegocio.listarConSp();
                    ddlPokemons.DataTextField = "Nombre";
                    ddlPokemons.DataBind();
                }
            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
            }
        }
    }
}