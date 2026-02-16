using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionCitasMedicas
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rol"] is null)
            {
                Response.Redirect("login.aspx");
            }

            Master.PaginaActiva = "Inicio";

        }
    }
}