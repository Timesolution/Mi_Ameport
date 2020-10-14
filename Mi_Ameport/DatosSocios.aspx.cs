using Ameport_Api.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mi_Ameport
{
    public partial class DatosSocios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            var socio = Session["Socio"] as Socio;
            if (socio != null)
            {
                //this.LitSocio.Text = socio.nombre + " " + socio.apellido;
            }
        }
    }
}