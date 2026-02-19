<%@ Page Title="Detalle de Cita" UnobtrusiveValidationMode="None" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="DetalleCitas.aspx.cs" Inherits="GestionCitasMedicas.DetalleCitas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="card shadow-lg p-4 rounded-4 mb-4">

    <h4 class="mb-4 text-primary fw-bold">
        <i class="fa-solid fa-magnifying-glass"></i>
        Buscar Cita
    </h4>

    <div class="row g-3 align-items-end">

        <div class="col-md-6">
            <asp:Label 
                ID="lblIdCita" 
                runat="server" 
                Text="ID de la Cita"
                CssClass="form-label fw-semibold">
            </asp:Label>

            <asp:TextBox 
                ID="txtIdCita" 
                runat="server"
                CssClass="form-control form-control-lg shadow-sm"
                placeholder="Ingrese el ID de la cita">
            </asp:TextBox>

            <asp:RequiredFieldValidator 
                ID="rfvIdCita" 
                runat="server" 
                ControlToValidate="txtIdCita"
                ErrorMessage="El ID de Cita es obligatorio"
                CssClass="text-danger small"
                Display="Dynamic">
            </asp:RequiredFieldValidator>
        </div>

        <div class="col-md-4">
            <asp:Button 
                ID="btnBuscar" 
                runat="server" 
                Text="Buscar Cita"
                CssClass="btn btn-primary btn-lg w-100 shadow-sm"
                OnClick="btnBuscar_Click" />
        </div>

    </div>

</div>


   <div class="card shadow-lg p-4 rounded-4">

    <h4 class="mb-4 text-primary fw-bold">
        <i class="fa-solid fa-calendar-check"></i>
        Resultado de la búsqueda
    </h4>

    <asp:GridView 
        ID="gvCitas" 
        runat="server" 
        AutoGenerateColumns="true"
        CssClass="table table-striped table-hover text-center align-middle"
        HeaderStyle-CssClass="table-primary"
        EmptyDataText="No se encontró la cita">
    </asp:GridView>

</div>


</asp:Content>
