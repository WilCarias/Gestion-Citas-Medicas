<%@ Page 
    Title="Cita"
    Language="C#"
    MasterPageFile="~/layout.master"
    AutoEventWireup="true"
    CodeBehind="cita.aspx.cs"
    Inherits="GestionCitasMedicas.cita" %>
<%@ MasterType VirtualPath="~/Layout.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container row d-flex justify-content-center align-items-center mb-3">
        <div class="row">
            <div class="col-4">
                <asp:Label runat="server" ID="lblCodigoPaciente" Text="Codigo del paciente"></asp:Label>
                <asp:TextBox runat="server" ID="txtCodPaciente" cssClass="form-control"></asp:TextBox>

                <asp:RequiredFieldValidator 
                ID="rfvCodPaciente" 
                runat="server" 
                ControlToValidate="txtCodPaciente"
                ErrorMessage="El campo codigo del paciente es obligatorio." 
                ForeColor="Red" 
                display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <div class="col-4">
                  <asp:Label runat="server" ID="Label1" Text="Fecha de cita" CssClass="form-label"></asp:Label>
                  <asp:Calendar runat="server" ID="cldFecCita"></asp:Calendar>
            </div>
            
            <div class="row d-flex justify-content-center align-items-center mb-3">
            <div class="col-md-6 text-center">
                <asp:button runat="server" class="btn btn-success mt-3" Text="Registrarte"/>
            </div>
        </div>
        </div>
    </div>
</asp:Content>
