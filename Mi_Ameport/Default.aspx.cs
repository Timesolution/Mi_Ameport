using Ameport_Api.Controlador;
using Ameport_Api.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mi_Ameport
{
    public partial class Default : System.Web.UI.Page
    {
        ControladorPuntos cont = new ControladorPuntos();
        ControladorSocioEntity contSocio = new ControladorSocioEntity(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            this.verificarLogin();
            if (!IsPostBack)
            {
                this.cargarInformacion();
            }
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
            catch
            {
 
            }
        }

        private void cargarInformacion()
        {
            try
            {
                var socio = Session["Socio"] as Ameport_Api.Modelo.Socio;
                this.cargarPuntosAcumulados(socio.id);
                this.cargarRanking(socio.id);
                this.cargarNumerosSorteo(socio.id);
                //link mes
                this.linkMes.HRef = "Reportes.aspx?a=1&s=" + socio.id;
                //link año
                this.linkAnio.HRef = "Reportes.aspx?a=2&s=" + socio.id;
            }
            catch
            {
 
            }
        }

        #region puntos
        private void cargarPuntosAcumulados(int idSocio)
        {
            try
            {
                var puntos = this.cont.obtenerMovimientosPuntosSocio(idSocio);
                int puntosAcum = 0;
                foreach (var p in puntos)
                {
                    this.cargarMovimientoPunto(p);
                    puntosAcum += (int)p.Cantidad;
                }
                this.LitPuntosAcum.Text = puntosAcum.ToString();
            }
            catch(Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error cargando puntos del socio Socio. " + ex.Message + "');", true);
            }
        }

        private void cargarMovimientoPunto(CCPunto p)
        {
            try
            {
                TableRow tr = new TableRow();

                TableCell tc = new TableCell();
                tc.HorizontalAlign = HorizontalAlign.Right;
                tc.Text = Convert.ToDateTime(p.Fecha).ToString("dd/MM/yyyy");
                tr.Cells.Add(tc);

                TableCell tc1 = new TableCell();
                tc1.Text = p.Descripcion;
                tc1.HorizontalAlign = HorizontalAlign.Left;
                tr.Cells.Add(tc1);

                TableCell tc2 = new TableCell();
                tc2.HorizontalAlign = HorizontalAlign.Right;
                tc2.Text = p.Cantidad.ToString();
                tr.Cells.Add(tc2);

                //TableCell tc3 = new TableCell();
                //tc3.HorizontalAlign = HorizontalAlign.Center;

                //Label l3 = new Label();
                //l3.Text = "<a href=\"ExpedientesAdmin.aspx?a=2&e=" + item.Id + "\" class=\"btn btn-info btn-circle\">";
                //l3.Text += "	<i class=\"fa fa-cog\"></i>	";
                //l3.Text += " </a>&nbsp";
                //tc3.Controls.Add(l3);
                //tr.Cells.Add(tc3);

                //Label l = new Label();
                //l.Text = "<a href=\"ExpedientesABM.aspx?a=2&e=" + item.Id + "\" class=\"btn btn-primary btn-circle\">";
                //l.Text += "	<i class=\"fa fa-pencil\"></i>	";
                //l.Text += " </a>&nbsp";
                //tc3.Controls.Add(l);
                //tr.Cells.Add(tc3);

                //Label l2 = new Label();
                //l2.Text = "<a href=\"#" + item.Id + "\" class=\"btn btn-danger btn-circle\">";
                //l2.Text += "	<i class=\"fa fa-trash\"></i>	";
                //l2.Text += " </a>";
                //tc3.Controls.Add(l2);
                //tr.Cells.Add(tc3);

                this.phPuntos.Controls.Add(tr);
            }
            catch(Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error cargando movimiento de detalle de puntos del socio. " + ex.Message + "');", true);
            }
        }
        
        #endregion

        #region ranking
        private void cargarRanking(int idSocio)
        {
            try
            {
                var s = this.contSocio.obtenerSocioPorId(idSocio);
                int interior = 1;
                if (Convert.ToInt32(s.CodPost) <= 1899)
                {
                    interior = 0;
                }

                var ranking = this.cont.obtenerRankingPuntos(interior);
                int pos = 1;
                foreach (var r in ranking)
                {
                    if (r.IdSocio == idSocio)
                    {
                        this.LitRanking.Text = pos.ToString();
                    }
                    this.cargarMovimientoRanking(pos, r);
                    pos++;
                }
                
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error cargando ranking del Socio. " + ex.Message + "');", true);
            }
        }

        private void cargarMovimientoRanking(int pos, Ameport_Api.Modelo.Ranking r)
        {
            try
            {
                TableRow tr = new TableRow();

                TableCell tc = new TableCell();
                //tc.HorizontalAlign = HorizontalAlign.Right;
                tc.Text = pos.ToString();
                tr.Cells.Add(tc);

                TableCell tc1 = new TableCell();
                tc1.Text = r.Socio;
                tc1.HorizontalAlign = HorizontalAlign.Left;
                tr.Cells.Add(tc1);

                TableCell tc2 = new TableCell();
                tc2.HorizontalAlign = HorizontalAlign.Right;
                tc2.Text = r.Puntos.ToString();
                tr.Cells.Add(tc2);

                //TableCell tc3 = new TableCell();
                //tc3.HorizontalAlign = HorizontalAlign.Center;

                //Label l3 = new Label();
                //l3.Text = "<a href=\"ExpedientesAdmin.aspx?a=2&e=" + item.Id + "\" class=\"btn btn-info btn-circle\">";
                //l3.Text += "	<i class=\"fa fa-cog\"></i>	";
                //l3.Text += " </a>&nbsp";
                //tc3.Controls.Add(l3);
                //tr.Cells.Add(tc3);

                //Label l = new Label();
                //l.Text = "<a href=\"ExpedientesABM.aspx?a=2&e=" + item.Id + "\" class=\"btn btn-primary btn-circle\">";
                //l.Text += "	<i class=\"fa fa-pencil\"></i>	";
                //l.Text += " </a>&nbsp";
                //tc3.Controls.Add(l);
                //tr.Cells.Add(tc3);

                //Label l2 = new Label();
                //l2.Text = "<a href=\"#" + item.Id + "\" class=\"btn btn-danger btn-circle\">";
                //l2.Text += "	<i class=\"fa fa-trash\"></i>	";
                //l2.Text += " </a>";
                //tc3.Controls.Add(l2);
                //tr.Cells.Add(tc3);

                this.phRanking.Controls.Add(tr);
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error cargando movimiento de detalle de ranking del socio. " + ex.Message + "');", true);
            }
        }

        #endregion

        #region Numeros
        private void cargarNumerosSorteo(int idSocio)
        {
            try
            {
               var numerosMensuales = this.cont.obtenerNumerosMensualesSocio(idSocio);
                var numerosAnuales = this.cont.obtenerNumerosAnualesSocio(idSocio);
                if (numerosMensuales.Count > 0)
                {
                    this.phNumerosMensuales.Visible = true;
                    this.phNumerosMensuales.Controls.Clear();
                    int i = 0;
                    foreach (var n in numerosMensuales)
                    {
                        this.cargarMovimientoNumero(n, 1);
                        i++;
                    }
                    this.LitNumeros.Text = i.ToString();
                }
                else
                {
                    UpdateMensuales.Visible = false;
                    this.phNumerosMensuales.Visible = false;
                }
                if (numerosAnuales.Count > 0)
                {
                    this.phNumeroAnual.Visible = true;
                    this.phNumeroAnual.Controls.Clear();
                    int j = 0;
                    foreach (var n in numerosAnuales)
                    {
                        this.cargarMovimientoNumero(n, 2);
                        j++;
                    }
                    this.LitNumerosAnuales.Text = j.ToString();
                }
                else
                {
                    UpdateAnual.Visible = false;
                    this.phNumeroAnual.Visible = false;
                }
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error cargando numeros del Socio. " + ex.Message + "');", true);
            }
        }

        private void cargarMovimientoNumero(NumerosSorteo  n, int v)
        {
            try
            {
                
                TableRow tr = new TableRow();

                TableCell tc = new TableCell();
                //tc.HorizontalAlign = HorizontalAlign.Right;
                tc.Text = n.Serie.ToString();
                tr.Cells.Add(tc);

                TableCell tc1 = new TableCell();
                tc1.Text = n.Numero.ToString();
                tc1.HorizontalAlign = HorizontalAlign.Left;
                tr.Cells.Add(tc1);

                //TableCell tc2 = new TableCell();
                //tc2.HorizontalAlign = HorizontalAlign.Right;
                //tc2.Text = r.Puntos.ToString();
                //tr.Cells.Add(tc2);

                //TableCell tc3 = new TableCell();
                //tc3.HorizontalAlign = HorizontalAlign.Center;

                //Label l3 = new Label();
                //l3.Text = "<a href=\"ExpedientesAdmin.aspx?a=2&e=" + item.Id + "\" class=\"btn btn-info btn-circle\">";
                //l3.Text += "	<i class=\"fa fa-cog\"></i>	";
                //l3.Text += " </a>&nbsp";
                //tc3.Controls.Add(l3);
                //tr.Cells.Add(tc3);

                //Label l = new Label();
                //l.Text = "<a href=\"ExpedientesABM.aspx?a=2&e=" + item.Id + "\" class=\"btn btn-primary btn-circle\">";
                //l.Text += "	<i class=\"fa fa-pencil\"></i>	";
                //l.Text += " </a>&nbsp";
                //tc3.Controls.Add(l);
                //tr.Cells.Add(tc3);

                //Label l2 = new Label();
                //l2.Text = "<a href=\"#" + item.Id + "\" class=\"btn btn-danger btn-circle\">";
                //l2.Text += "	<i class=\"fa fa-trash\"></i>	";
                //l2.Text += " </a>";
                //tc3.Controls.Add(l2);
                //tr.Cells.Add(tc3);
                if (v == 1)
                {
                    this.phNumerosMensuales.Controls.Add(tr);
                }
                if (v == 2)
                {
                    this.phNumeroAnual.Controls.Add(tr);
                }
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error cargando numero. " + ex.Message + "');", true);
            }
        }

        #endregion

    }
}