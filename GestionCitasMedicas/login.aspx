<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="GestionCitasMedicas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous"/>
</head>
<body style="background-color:#f4f8fb;">
    <main class="vh-100 d-flex justify-content-center align-items-center">
    
        <form id="form1" runat="server" class="col-4 p-4 bg-white rounded shadow">

            <div class=" d-flex justify-content-center align-items-center">
                <img src="./src/img/Logo-Citas-Medicas.png" alt="Logo del sistema" class="img-fluid w-50" />
            </div>
            
            <h1 class="h3 mb-3 fw-normal text-center">Inicio de sesión</h1>

            <div class="mb-3">
                <asp:Label runat="server" ID="lblCorreo" for="txtCorreo" Text="Correo electrónico"></asp:Label>
                <asp:TextBox runat="server" ID="txtCorreo" cssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    ID="rfvCorreo" 
                    runat="server" 
                    ControlToValidate="txtCorreo"
                    ErrorMessage="El campo correo es obligatorio." 
                    ForeColor="Red" 
                    display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <div class="mb-3">
                <asp:Label runat="server" ID="lblContrasenia" for="txtContrasenia">Contraseña</asp:Label>
                <asp:TextBox runat="server" ID="txtContrasenia" TextMode="Password" cssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvContra" runat="server" ControlToValidate="txtContrasenia"
                    ErrorMessage="El campo contraseña es obligatorio." ForeColor="Red" display="Dynamic" EnableClientScript="true"
                    CausesValidation="true"></asp:RequiredFieldValidator>
            </div>

            <div class="form-check mb-4">
                <asp:checkbox runat="server" cssClass="form-check-input" ID="checkDefault"></asp:checkbox>
                <asp:Label runat="server" cssClass="form-check-label" for="checkDefault" Text="Recordar usuario"></asp:Label>
            </div>

            <asp:Label runat="server" class="mb-4">¿No tienes una cuenta? <a href="/registrarse.aspx">Registrarse</a></asp:Label>

            <asp:button ID="btnEnviar" runat="server" Text="Iniciar Sesión" cssClass="btn btn-primary w-100 mb-4" 
                OnClick="btn_Iniciar_Sesion_Click" CausesValidation="true" />

        </form>

    </main>
    

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.min.js" integrity="sha384-G/EV+4j2dNv+tEPo3++6LCgdCROaejBqfUeNjuKAiuXbjrxilcCdDz6ZAVfHWe1Y" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>
