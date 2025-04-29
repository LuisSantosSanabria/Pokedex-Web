<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PokemonsLista.aspx.cs" Inherits="pokedex_web.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Listar Pokemons?</h1>
    <asp:GridView ID="dgcPokemons" runat="server" CssClass="table" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField headerText="Nombre" DataField="Nombre" />
            <asp:BoundField headerText="Tipo" Datafield="Tipo.Descripcion" />
        </Columns>
    </asp:GridView>
</asp:Content>
