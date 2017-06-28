<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="LugaresConocer.aspx.cs" Inherits="WORLD_TRAVEL_1._1.LugaresConocer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lugares a conocer:</h1>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <nav class="Lugares">
                
                </br>
                 >> <%#Eval("Nombre") %></br></br>
               <img width="400" height="300" src="<%#Eval("Imagen") %>" /></br>
                <%#Eval("DescripcionBreve") %></br></br>
                <%#Eval("DescripcionCompleta") %></br></br>

            </nav>
        </ItemTemplate>
    </asp:Repeater>






    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:WOLRD-TRAVELConnectionString %>' SelectCommand="SELECT * FROM [Ciudad] WHERE ([DepaID] = @DepaID)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="ID" Name="DepaID" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
