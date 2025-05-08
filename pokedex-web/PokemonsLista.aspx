    <%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PokemonsLista.aspx.cs" Inherits="pokedex_web.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de Pokemons</h1>
    <asp:GridView ID="dgvPokemons" runat="server" DataKeyNames="Id" 
        CssClass="table" AutoGenerateColumns="false"
        OnSelectedIndexChanged="dgvPokemons_SelectedIndexChanged"
        OnPageIndexChanging="dgvPokemons_PageIndexChanged"
        AllowPaging="True" PageIndex="5">
        <Columns>
            <asp:BoundField headerText="Nombre" DataField="Nombre" />
            <asp:BoundField headerText="NUmero" Datafield="Numero" />
            <asp:BoundField headerText="Tipo" Datafield="Tipo.Descripcion" />
            <asp:CommandField HeaderText="Accion" ShowSelectButton="true" SelectText="📝" />
        </Columns>
    </asp:GridView>
    <a href="FormularioPokemon.aspx" class="btn btn-primary">Agregar</a>
</asp:Content>
