<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="pokedex_web.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Llegando...</h1>

    <div class="row row-cols-1 row-cols-md-3 g-4">
        <%--
        <%
            foreach (dominio.Pokemon poke in ListaPokemon)
            {
        %>
        <div class="col">
            <div class="card">
                <img src="<%:poke.UrlImagen %>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><%:poke.Nombre %></h5>
                    <p class="card-text"><%: poke.Descripcion %></p>
                    <a href="DetallePokemon.aspx?id=<%: poke.Id %>">Ver detalle</a>
                </div>
            </div>
        </div>
        <%    } %> --%>

        <asp:Repeater ID="repRepetidor" runat="server">
            <ItemTemplate>
                <%-- una plantilla que es lo que se va repetir  --%>
                <div class="col">
                    <div class="card">
                        <img src="<%# Eval("UrlImagen") %>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%# Eval("Nombre") %></h5>
                            <p class="card-text"><%# Eval("Descripcion")%></p>
                            <a href="DetallePokemon.aspx?id=<%# Eval("Id") %>">Ver detalle</a>
                            <asp:Button ID="btnEjemplo" runat="server" Text="Ejemplo" CssClass="btn btn-primary" CommandArgument='<%#Eval("Id") %>' CommandName="PokemonId" OnClick="btnEjemplo_Click"/>
                                                                                                          <%-- capturar el valor, al boton lo guardo en una suerte de variable se lleve un valor como argumento, el evento   --%>
                        </div>
                    </div>
                </div> 
            </ItemTemplate>
        </asp:Repeater>           

    </div>
</asp:Content>
