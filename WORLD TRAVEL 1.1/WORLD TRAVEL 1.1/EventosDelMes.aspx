<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="EventosDelMes.aspx.cs" Inherits="WORLD_TRAVEL_1._1.EventosDelMes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div class="evento">
               <h1> <%#Eval("Titulo") %></h1> </br></br>
               <section class="izq">
                   <img src=" <%#Eval("Imagen") %>" /></br>
               </section>
               <section class="der">
                    <%#Eval("Descripcion") %></br>
               fecha: <%#Eval("Fecha") %>-
                <%#Eval("Ciudad") %></br>
                
                   visite: <a href="#"><%#Eval("Evento") %></br> </a>
                   
                   </br>
               </section>
            </div>

        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:WOLRD-TRAVELConnectionString %>' SelectCommand="SELECT * FROM [Eventos] WHERE ([Mes] = @Mes)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="codigo" Name="Mes" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
