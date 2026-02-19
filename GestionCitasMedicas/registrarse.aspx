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
                    <asp:RequiredFieldValidator 
                        ID="rfvNombre" 
                        runat="server" 
                        ControlToValidate="txtNombre"
                        ErrorMessage="El campo nombre es obligatorio." 
                        ForeColor="Red" 
                        display="Dynamic">
                    </asp:RequiredFieldValidator>
                </div>

                <div class="col-md-5">
                    <asp:Label runat="server" ID="lblApellidos" Text="Apellidos" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtApellidos" cssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="rfvApellidos" 
                        runat="server" 
                        ControlToValidate="txtApellidos"
                        ErrorMessage="El campo apellidos es obligatorio." 
                        ForeColor="Red" 
                        display="Dynamic">
                    </asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row d-flex justify-content-center align-items-center mb-3">
                <div class="col-md-5">
                    <asp:Label runat="server" ID="lblDui" Text="DUI" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtDui" cssClass="form-control"></asp:TextBox>
                    <asp:RegularExpressionValidator 
                        ID="rfvRegexDUI" 
                        runat="server" 
                        ControlToValidate="txtDui"
                        ValidationExpression="^\d{8}-\d{1}$"
                        ErrorMessage="Formato de DUI no válido (00000000-0)." 
                        ForeColor="Red" 
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                    <asp:RequiredFieldValidator 
                        ID="rfvDui" 
                        runat="server" 
                        ControlToValidate="txtDui"
                        ErrorMessage="El campo DUI es obligatorio." 
                        ForeColor="Red" 
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </div>

                <div class="col-md-5">
                    <asp:Label runat="server" ID="lblTelefono" Text="Telefono" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtTelefono" cssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="rfvTelefono" 
                        runat="server" 
                        ControlToValidate="txtTelefono"
                        ErrorMessage="El campo Telefono es obligatorio." 
                        ForeColor="Red" 
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row d-flex justify-content-center align-items-center mb-3">
                <div class="col-md-10">
                    <asp:Label runat="server" ID="lblDireccion" Text="Direccion" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtDireccion" cssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="rfvDireccion" 
                        runat="server" 
                        ControlToValidate="txtDireccion"
                        ErrorMessage="El campo dirección es obligatorio." 
                        ForeColor="Red" 
                        display="Dynamic">
                    </asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row d-flex justify-content-center mb-3">
                <div class="col-md-5 d-flex flex-column align-items-start">
                    <asp:Label runat="server" ID="Label1" Text="Fecha de nacimiento" CssClass="form-label"></asp:Label>
                    <asp:Calendar runat="server" ID="cldFecNac"></asp:Calendar>
                </div>

                <div class="col-md-5 d-flex flex-column align-items-start">
                    <asp:Label runat="server" ID="lblSexo" Text="Sexo" CssClass="form-label"></asp:Label>
                    <asp:RadioButtonList 
                        ID="rblSexo" 
                        runat="server" 
                        RepeatDirection="Vertical">
                        <asp:ListItem Text="Masculino" Value="M"></asp:ListItem>
                        <asp:ListItem Text="Femenino" Value="F"></asp:ListItem>
                    </asp:RadioButtonList>

                    <asp:RequiredFieldValidator 
                        ID="rfvSexo" 
                        runat="server" 
                        ControlToValidate="rblSexo" 
                        ErrorMessage="El campo sexo es obligatorio." 
                        ForeColor="Red" 
                        Display="Dynamic" 
                        CssClass="small">
                    </asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row d-flex justify-content-center align-items-center mb-3">
                <div class="col-md-4">
                    <asp:Label runat="server" ID="lblCorreo" Text="Correo" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtCorreo" cssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="rfvCorreo" 
                        runat="server" 
                        ControlToValidate="txtCorreo"
                        ErrorMessage="El campo correo es obligatorio." 
                        ForeColor="Red" 
                        display="Dynamic">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col-md-3">
                    <asp:Label runat="server" ID="lblContrasenia" Text="Contraseña" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtContrasenia" cssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="rfvContrasenia" 
                        runat="server" 
                        ControlToValidate="txtContrasenia"
                        ErrorMessage="El campo contraseña es obligatorio." 
                        ForeColor="Red" 
                        display="Dynamic">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col-md-3">
                    <asp:Label runat="server" ID="lblConfirmContrasenia" Text="Confirmar contraseña" CssClass="form-label"></asp:Label>
                    <asp:TextBox runat="server" ID="txtConfirmContrasenia" cssClass="form-control"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rfvConfirmContrasenia" runat="server" 
                        ControlToValidate="txtConfirmContrasenia"
                        ErrorMessage="Debe confirmar la contraseña" 
                        ForeColor="Red" display="Dynamic">
                    </asp:RequiredFieldValidator>

                    <asp:CompareValidator ID="rfvConfirmarContrasenia" runat="server"
                        ControlToValidate="txtConfirmContrasenia"
                        ControlToCompare="txtContrasenia"
                        Operator="Equal"
                        Type="String"
                        ErrorMessage="Las contraseñas no coinciden"
                        ForeColor="Red" display="Dynamic">
                    </asp:CompareValidator>
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
