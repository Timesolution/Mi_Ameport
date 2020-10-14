using Ameport_Api.Controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mi_Ameport
{
    public partial class GanadorF : System.Web.UI.Page
    {
        ControladorPuntos cont = new ControladorPuntos();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.cargarGanador();
        }

        private void cargarGanador()
        {
            try
            {
                var g = this.cont.obtenerUltimoGanador();
                this.LitNroGanador.Text = "Número Ganador " + g.NumeroGanador;
                this.LitGanador.Text = "Asignado a " + g.AsignadoA;
                this.LitOrganismo.Text = "Organismo: " + g.Organismo;
                this.LitSorteo.Text = "Sorteo: " + g.Sorteo;
            }
            catch
            { }
        }
    }
}