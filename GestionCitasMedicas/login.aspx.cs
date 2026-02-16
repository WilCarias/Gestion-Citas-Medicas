using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionCitasMedicas
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserEmail"] != null)
                {
                    txtCorreo.Text = Request.Cookies["UserEmail"].Value;
                    checkDefault.Checked = true;
                }
            }
            
        }

        protected void btn_Iniciar_Sesion_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                string correo = txtCorreo.Text;
                string contrasenia = txtContrasenia.Text;
                string rol = "";

                if (contrasenia.Equals("admin123"))
                {
                    rol = "Admin";
                }
                else if (contrasenia.Equals("user123"))
                {
                    rol = "Paciente";
                }
                else if(contrasenia.Equals("doc123"))
                {
                    rol = "Doctor";
                }

                if (rol != "")
                {

                    if (checkDefault.Checked)
                    {
                        HttpCookie cookieRecuerdo = new HttpCookie("UserEmail", txtCorreo.Text);
                        cookieRecuerdo.Expires = DateTime.Now.AddDays(30);
                        Response.Cookies.Add(cookieRecuerdo);
                    }
                    else
                    {
                        if (Request.Cookies["UserEmail"] != null)
                        {
                            HttpCookie cookieBorrar = new HttpCookie("UserEmail");

                            cookieBorrar.Expires = DateTime.Now.AddDays(-1);

                            Response.Cookies.Add(cookieBorrar);
                        }
                    }

                    Session["rol"] = rol;
                    Response.Redirect("Inicio.aspx");
                }
            }
        }
    }
}