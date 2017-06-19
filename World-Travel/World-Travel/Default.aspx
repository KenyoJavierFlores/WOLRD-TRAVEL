<%@ Page Title="" Language="C#" MasterPageFile="~/WT.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="World_Travel.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="fondo" />

    <asp:XmlDataSource runat="server" ID="fondo" DataFile="~/Fondo.xml"></asp:XmlDataSource>
    <asp:XmlDataSource runat="server" ID="fondos"></asp:XmlDataSource>
</asp:Content>
