<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="UpdatePanel.aspx.cs" Inherits="pokedex_web.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- requerido para usar update panel--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <h3>Upate Pnael</h3>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="form-group">
                <div class="row">
                    <div class="col">
                        <asp:Label Text="text" runat="server" ID="lblNombre" />
                    </div>
                    <div class="col">
                        <asp:TextBox AutoPostBack="true" runat="server" ID="txtNombre" OnTextChanged="txtNombre_TextChanged" CssClass="form-control" />
                    </div>
                    <div class="col">
                        <asp:Button Text="Aceptar" CssClass="form-control" runat="server" ID="btnAceptar" OnClick="btmAceptar_click" />
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

    <hr />
    <h1>Enlazados Update Panel</h1>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
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
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
