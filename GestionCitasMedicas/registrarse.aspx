<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarse.aspx.cs" Inherits="GestionCitasMedicas.registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="./src/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-color:#f4f8fb;">

    <main class="vh-100 d-flex justify-content-center align-items-center">

        <form id="form1" runat="server" class="col-7 p-4 bg-white rounded shadow">

            <div class="d-flex justify-content-center align-items-center">
                <img src="./src/img/Logo-Citas-Medicas.png" alt="Logo del sistema" class="img-fluid w-25" />
            </div>

            <h1 class="h3 mb-3 fw-normal text-center">Crea una cuenta</h1>
            <hr />

            <div class="row d-flex justify-content-center align-items-center mb-3">
                <div class="col-md-5">
                    <asp:Label runat="server" ID="lblNombre" Text="Nombre" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtNombre" cssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-md-5">
                    <asp:Label runat="server" ID="lblApellidos" Text="Apellidos" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtApellidos" cssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="row d-flex justify-content-center align-items-center mb-3">
                <div class="col-md-5">
                    <asp:Label runat="server" ID="lblDui" Text="DUI" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtDui" cssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-md-5">
                    <asp:Label runat="server" ID="lblTelefono" Text="Telefono" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtTelefono" cssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="row d-flex justify-content-center align-items-center mb-3">
                <div class="col-md-10">
                    <asp:Label runat="server" ID="lblDireccion" Text="Direccion" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtDireccion" cssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="row d-flex justify-content-center align-items-center mb-3">
                <div class="col-md-4">
                    <asp:Label runat="server" ID="lblCorreo" Text="Correo" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtCorreo" cssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:Label runat="server" ID="lblContrasenia" Text="Contraseña" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtContrasenia" cssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:Label runat="server" ID="lblConfirmContrasenia" Text="Confirmar contraseña" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtConfirmContrasenia" cssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="row d-flex justify-content-center align-items-center mb-3">
                <div class="col-md-6 text-center">
                    <a href="/login.aspx">¿Ya tienes una cuenta?</a><br />
                    <asp:button runat="server" class="btn btn-success mt-3" Text="Registrarte"/>
                </div>
            </div>
            
        </form>
    </main>
    

    <script src="./src/js/popper.min.js"></script>
    <script src="./src/js/bootstrap.bundle.min.js"></script>
</body>
</html>
