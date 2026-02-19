using System;
using System.Data;

namespace GestionCitasMedicas
{
    public partial class DetalleCitas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Creamos tabla en memoria (simulación)
                DataTable dt = new DataTable();

                dt.Columns.Add("IDCITA");
                dt.Columns.Add("PACIENTE");
                dt.Columns.Add("MEDICO");
                dt.Columns.Add("FECHA");
                dt.Columns.Add("HORA");
                dt.Columns.Add("ESTADO");

                // Simulación: si ID = 1 mostramos datos
                if (txtIdCita.Text == "1")
                {
                    dt.Rows.Add("1", "Juan Pérez", "Dr. López", "18/02/2026", "10:00 AM", "Activa");
                }

                gvCitas.DataSource = dt;
                gvCitas.DataBind();
            }
        }
    }
}
