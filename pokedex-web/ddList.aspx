<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ddList.aspx.cs" Inherits="pokedex_web.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>DropDownList</h1>
    <div class="row">
        <div class="col">
            <h4>ddList Estatico</h4>
            <asp:DropDownList CssClass="btn btn-outline-dark dropdown-tpggle" runat="server">
                <asp:ListItem Text="Rojo" />
                <asp:ListItem Text="Azul" />
            </asp:DropDownList>
        </div>

    </div>
    <div class="row">
        <div class="col">

            <h4>ddList desde DB</h4>
            <asp:DropDownList runat="server" ID="ddlPokemons" CssClass="btn btn-outline-dark dropdown-toggle">
            </asp:DropDownList>
        </div>
    </div>
</asp:Content>
