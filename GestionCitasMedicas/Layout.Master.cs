using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionCitasMedicas
{
    public partial class Layout : System.Web.UI.MasterPage
    {
        public string PaginaActiva { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string GetActiveClass(string nombrePagina)
        {
            return PaginaActiva == nombrePagina ? "active" : "";
        }

        protected void btn_Cerrar_Sesion_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("./login.aspx");
        }
    }
}