using Ameport_Api.Controlador;
using Ameport_Api.Entity;
using Media;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mi_Ameport
{
    public partial class CanjesF : System.Web.UI.Page
    {
        ControladorPuntos cont = new ControladorPuntos();

        ControladorStore controlador = new ControladorStore();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.verificarLogin();
            this.cargarCanjes();
        }

        private void verificarLogin()
        {
            try
            {
                var socio = Session["Socio"] as Ameport_Api.Modelo.Socio;
                if (socio == null)
                {
                    Response.Redirect("Login.aspx");
                }
            }
            catch(Exception ex)
            {

            }
        }

        private void cargarCanjes()
        {
            try
            {
                var Productos = this.controlador.obtenerProductosCanje();
                this.phPremios.Controls.Clear();

                foreach (var p in Productos)
                {
                    var mosaico = this.cargarMosaicoCanje(p);
                    if(mosaico != null)
                    this.phPremios.Controls.Add(mosaico);
                }
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error cargando canjes. " + ex.Message + "');", true);
            }
        }

        private ContactoMosaico cargarMosaicoCanje(Productos p)
        {
            try
            {
                var socio = Session["Socio"] as Ameport_Api.Modelo.Socio;
                var puntos = this.cont.obtenerMovimientosPuntosSocio(socio.id);
                int puntosAcum = 0;
                foreach (var pu in puntos)
                {
                    puntosAcum += (int)pu.Cantidad;
                }
                if (p.Productos_Financiacion.Count > 0)
                {
                    if (p.Productos_Financiacion.Where(x => x.Cuotas == 1).FirstOrDefault().Importe < puntosAcum)
                    {
                        ContactoMosaico cm = (ContactoMosaico)Page.LoadControl("Controles/ContactoMosaico.ascx");

                        cm.LitDescripcion.Text = p.Descripcion;
                        cm.LitMarca.Text = p.Marcas.descripcion;
                        cm.LitPuntos.Text = "Puntos: " + p.Productos_Financiacion.Where(x => x.Cuotas == 1).FirstOrDefault().Importe.ToString();
                        cm.btnLink.HRef = "http://www.ameport.org.ar/Store/ArticuloDetalle?url=&num=" + p.id;
                        //cargo imagen
                        string debug = ConfigurationManager.AppSettings["Debug"];
                        if (debug == "si")
                        {
                            cm.Imagen.ImageUrl = "/images/Canjes/no_picture.jpg";
                        }
                        else
                        {
                            string path = Server.MapPath("..\\images\\Productos\\" + p.codigo + "\\");


                            string[] imagenes = Directory.GetFiles(path);
                            if (imagenes.Length > 0)
                            {
                                for (int i = 0; i < imagenes.Length; i++)
                                {
                                    FileInfo fi = new FileInfo(imagenes[i]);
                                    cm.Imagen.ImageUrl = "..\\..\\images\\Productos\\" + p.codigo + "\\" + fi.Name;
                                }
                            }
                            else
                            {
                                //llamo que traiga la no foto
                                cm.Imagen.ImageUrl = "/images/Canjes/no_picture.jpg";
                            }
                        }
                        //if (r.Contactos_Direcciones.Count > 0)
                        //{
                        //    Contactos_Direcciones cd = r.Contactos_Direcciones.ElementAt(0);

                        //    cm.LitDireccion.Text = cd.Calle + ", " + cd.Ciudad + "; " + cd.Estado + ", " + cd.CodigoPostal;

                        //}
                        //if (r.Contactos_Telefonos.Count > 0)
                        //{

                        //    cm.LitTelefono.Text = r.Contactos_Telefonos.ElementAt(0).Numero;
                        //}
                        //viene buscar
                        //if (this.accion == 2)
                        //{
                        //cm.btnSeleccionar.Visible = true;
                        //cm.btnSeleccionar.PostBackUrl = "../Expedientes/ExpedientesAdmin.aspx?a=2&t=1&v=" + this.vPArticipante + "&c=" + r.Id + "&e=" + this.expediente;
                        //}

                        return cm;
                    }
                }
                return null;

            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error cargando datos en mosaico. " + ex.Message + "');", true);
                //this.m.ShowToastr(this.Page, "Error cargando requerido en mosaico " + ex.Message, "Error", "error");
                return null;
            }
        }


    }
}