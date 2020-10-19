using Ameport_Api.Controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mi_Ameport
{
    public partial class Login : System.Web.UI.Page
    {
        ControladorSocio controlador = new ControladorSocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string cerrar = Request.QueryString["c"];
                if (cerrar == "SI")
                {
                    Session.Clear();
                    Session.RemoveAll();
                    Response.Redirect("Login.aspx");
                }
            }
            catch { }
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            try
            {
                //VErifico es socio
                Ameport_Api.Modelo.Socio s = this.controlador.obtenerSociosDNI(this.txtUsuario.Text.Trim());
                //if (s != null && s.habilitado)
                if (s != null)
                {
                    Session.Add("Socio", s);
                    //todo bien completo datos
                    //this.txtNombre.Text = s.nombre;
                    //this.txtApellido.Text = s.apellido;
                    //this.txtnroSocio.Text = s.nroSocio.ToString();
                    //this.UpdatePanel3.Visible = true;

                    //Response.Redirect("SolicitudCredencialF.aspx?dni=" + this.txtDNI.Text);
                    Response.Redirect("Default.aspx",false);
                }
                else
                {
                    if (s == null)
                    {
                        //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", m.mensajeBoxInfo("No existe Socio registrado con el DNI: " + this.txtDNI.Text + ". Verifique si su DNI es correcto", null));
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('No existe Socio registrado con el DNI: " + this.txtUsuario.Text + ". Verifique si su DNI es correcto');", true);
                    }
                    if (!s.habilitado)
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Socio Inhabilitado por favor contactese con la mutual');", true);
                        //Response.Redirect("SocioInhabilitado.aspx");
                    }
                }
            }
            catch (Exception ex)
            {
                //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", m.mensajeBoxError("Error validando mail. " + ex.Message));
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error validando Socio. " + ex.Message + "');", true);
            }
        }
    }
}