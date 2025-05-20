<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ddListEnlazado.aspx.cs" Inherits="pokedex_web.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>Enlazados</h1>
    <div class="row">
        <div class="col">
            <asp:Label Text="Tipos" runat="server"></asp:Label>
            <asp:DropDownList runat="server" ID="ddlTipos" CssClass="btn btn-outline-dark dropdown-toggle" AutoPostBack="true"
                OnSelectedIndexChanged="ddlTipos_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
        <div class="col">
            <asp:Label Text="Pokemons" runat="server"></asp:Label>
            <asp:DropDownList runat="server" ID="ddlPokemonsFiltrados" CssClass="btn btn-outline-dark dropdown-toggle" AutoPostBack="true">
            </asp:DropDownList>
        </div>
    </div>
</asp:Content>
