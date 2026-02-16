<%@ Page Title="Inicio"
    Language="C#"
    MasterPageFile="~/layout.master"
    AutoEventWireup="true"
    CodeBehind="inicio.aspx.cs"
    Inherits="GestionCitasMedicas.Inicio" %>
<%@ MasterType VirtualPath="~/Layout.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1>Bienvenido al sistema - <%= Session["rol"] %></h1>
</asp:Content>