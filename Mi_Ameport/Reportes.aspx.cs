using Ameport_Api.Controlador;
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mi_Ameport
{
    public partial class Reportes : System.Web.UI.Page
    {
        ControladorPuntos cont = new ControladorPuntos();
        ControladorSocioEntity contSocios = new ControladorSocioEntity();

        int accion;
        int excel;
        int idSocio;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                this.idSocio = Convert.ToInt32(Request.QueryString["s"]);

                this.accion = Convert.ToInt32(Request.QueryString["a"]);

                if (!IsPostBack)
                {
                    //mensual
                    if (accion == 1)
                    {
                        this.cargarDatosNumeros();
                    }
                    //Anual
                    if (accion == 2)
                    {
                        this.cargarDatosNumerosAnual();
                    }
                }
            }
            catch
            {

            }
        }

        private void cargarDatosNumeros()
        {
            try
            {
                var Numeros = this.cont.obtenerNumerosMensualesSocio(this.idSocio);
                
                var socio = this.contSocios.obtenerSocioPorId(this.idSocio);

                this.ReportViewer1.ProcessingMode = ProcessingMode.Local;
                this.ReportViewer1.LocalReport.ReportPath = Server.MapPath("Reportes\\Cobros.rdlc");

                ReportDataSource rds = new ReportDataSource("DataSet1", Numeros);

                ////string fecha = DateTime.Today.ToString("dd/MM/yyyy");

                ReportParameter rp = new ReportParameter("rpSocio", socio.Nombre + " " + socio.Apellido);
                ReportParameter rp1 = new ReportParameter("rpDocumento", socio.Dni.ToString());
                ReportParameter rp2 = new ReportParameter("rpNroSocio", socio.Socio1.ToString());
                
                
                //ReportParameter rp3 = new ReportParameter("rpTelefono", r.Socio1.Telefono);
                //ReportParameter rp4 = new ReportParameter("rpCelular", r.Socio1.Celular);
                //ReportParameter rp5 = new ReportParameter("rpMail", r.Socio1.Mail);
                //ReportParameter rp6 = new ReportParameter("rpFechaReserva", Convert.ToDateTime(r.FechaReserva).ToString("dd/MM/yyyy hh:mm:ss"));

                //string periodo = "ingresa el " + Convert.ToDateTime(r.FechaIngreso).ToString("dd/MM/yy") + " a las " + this.setearHora(r.HoraIngreso) + "hs. ";
                //periodo += "se retira el " + Convert.ToDateTime(r.FechaEgreso).ToString("dd/MM/yy") + " a las " + this.setearHora(r.HoraEgreso) + "hs.;";


                //ReportParameter rp7 = new ReportParameter("rpPeriodo", periodo);
                //ReportParameter rp8 = new ReportParameter("rpDestino", r.Hotele.Codigo + "-" + r.Hotele.Localidad + "-" + r.Hotele.Nombre);
                //ReportParameter rp9 = new ReportParameter("rpPasajeros", r.Pasajeros.ToString());
                //ReportParameter rp10 = new ReportParameter("rpOrganismo", r.Socio1.OrganismosEmpresa.OrganismoEmpresa);

                //if (string.IsNullOrEmpty(r.Comentarios))
                //{
                //    r.Comentarios = "-";
                //}
                //ReportParameter rp11 = new ReportParameter("rpComentario", r.Comentarios);


                this.ReportViewer1.LocalReport.DataSources.Clear();
                this.ReportViewer1.LocalReport.DataSources.Add(rds);
                this.ReportViewer1.LocalReport.SetParameters(rp);
                this.ReportViewer1.LocalReport.SetParameters(rp1);
                this.ReportViewer1.LocalReport.SetParameters(rp2);
                //this.ReportViewer1.LocalReport.SetParameters(rp3);
                //this.ReportViewer1.LocalReport.SetParameters(rp4);
                //this.ReportViewer1.LocalReport.SetParameters(rp5);
                //this.ReportViewer1.LocalReport.SetParameters(rp6);
                //this.ReportViewer1.LocalReport.SetParameters(rp7);
                //this.ReportViewer1.LocalReport.SetParameters(rp8);
                //this.ReportViewer1.LocalReport.SetParameters(rp9);
                //this.ReportViewer1.LocalReport.SetParameters(rp10);
                //this.ReportViewer1.LocalReport.SetParameters(rp11);

                Warning[] warnings;

                string mimeType, encoding, fileNameExtension;

                string[] streams;

                if (this.excel == 1)
                {
                    Byte[] xlsContent = this.ReportViewer1.LocalReport.Render("Excel", null, out mimeType, out encoding, out fileNameExtension, out streams, out warnings);

                    String filename = string.Format("{0}.{1}", "Stocks", "xls");

                    this.Response.Clear();
                    this.Response.Buffer = true;
                    this.Response.ContentType = "application/ms-excel";
                    this.Response.AddHeader("Content-Disposition", "attachment;filename=" + filename);
                    //this.Response.AddHeader("content-length", pdfContent.Length.ToString());
                    this.Response.BinaryWrite(xlsContent);

                    this.Response.End();
                }
                else
                {
                    //get pdf content

                    Byte[] pdfContent = this.ReportViewer1.LocalReport.Render("PDF", null, out mimeType, out encoding, out fileNameExtension, out streams, out warnings);

                    this.Response.Clear();
                    this.Response.Buffer = true;
                    this.Response.ContentType = "application/pdf";
                    this.Response.AddHeader("content-length", pdfContent.Length.ToString());
                    this.Response.BinaryWrite(pdfContent);

                    this.Response.End();

                }
                //this.ReportViewer1.LocalReport.DataSources.Add(rds2);
                //this.ReportViewer1.LocalReport.DataSources.Add(rds3);
                //this.ReportViewer1.LocalReport.DataSources.Add(rds4);
                //this.ReportViewer1.LocalReport.DataSources.Add(rds5);
                //this.ReportViewer1.LocalReport.DataSources.Add(rds6);
                //this.ReportViewer1.LocalReport.Refresh();
            }
            catch(Exception ex)
            { }
        }

        private void cargarDatosNumerosAnual()
        {
            try
            {
                var Numeros = this.cont.obtenerNumerosAnualesSocio(this.idSocio);

                var socio = this.contSocios.obtenerSocioPorId(this.idSocio);

                this.ReportViewer1.ProcessingMode = ProcessingMode.Local;
                this.ReportViewer1.LocalReport.ReportPath = Server.MapPath("Reportes\\Cobros.rdlc");

                ReportDataSource rds = new ReportDataSource("DataSet1", Numeros);

                ////string fecha = DateTime.Today.ToString("dd/MM/yyyy");

                ReportParameter rp = new ReportParameter("rpSocio", socio.Nombre + " " + socio.Apellido);
                ReportParameter rp1 = new ReportParameter("rpDocumento", socio.Dni.ToString());
                ReportParameter rp2 = new ReportParameter("rpNroSocio", socio.Socio1.ToString());


                //ReportParameter rp3 = new ReportParameter("rpTelefono", r.Socio1.Telefono);
                //ReportParameter rp4 = new ReportParameter("rpCelular", r.Socio1.Celular);
                //ReportParameter rp5 = new ReportParameter("rpMail", r.Socio1.Mail);
                //ReportParameter rp6 = new ReportParameter("rpFechaReserva", Convert.ToDateTime(r.FechaReserva).ToString("dd/MM/yyyy hh:mm:ss"));

                //string periodo = "ingresa el " + Convert.ToDateTime(r.FechaIngreso).ToString("dd/MM/yy") + " a las " + this.setearHora(r.HoraIngreso) + "hs. ";
                //periodo += "se retira el " + Convert.ToDateTime(r.FechaEgreso).ToString("dd/MM/yy") + " a las " + this.setearHora(r.HoraEgreso) + "hs.;";


                //ReportParameter rp7 = new ReportParameter("rpPeriodo", periodo);
                //ReportParameter rp8 = new ReportParameter("rpDestino", r.Hotele.Codigo + "-" + r.Hotele.Localidad + "-" + r.Hotele.Nombre);
                //ReportParameter rp9 = new ReportParameter("rpPasajeros", r.Pasajeros.ToString());
                //ReportParameter rp10 = new ReportParameter("rpOrganismo", r.Socio1.OrganismosEmpresa.OrganismoEmpresa);

                //if (string.IsNullOrEmpty(r.Comentarios))
                //{
                //    r.Comentarios = "-";
                //}
                //ReportParameter rp11 = new ReportParameter("rpComentario", r.Comentarios);


                this.ReportViewer1.LocalReport.DataSources.Clear();
                this.ReportViewer1.LocalReport.DataSources.Add(rds);
                this.ReportViewer1.LocalReport.SetParameters(rp);
                this.ReportViewer1.LocalReport.SetParameters(rp1);
                this.ReportViewer1.LocalReport.SetParameters(rp2);
                //this.ReportViewer1.LocalReport.SetParameters(rp3);
                //this.ReportViewer1.LocalReport.SetParameters(rp4);
                //this.ReportViewer1.LocalReport.SetParameters(rp5);
                //this.ReportViewer1.LocalReport.SetParameters(rp6);
                //this.ReportViewer1.LocalReport.SetParameters(rp7);
                //this.ReportViewer1.LocalReport.SetParameters(rp8);
                //this.ReportViewer1.LocalReport.SetParameters(rp9);
                //this.ReportViewer1.LocalReport.SetParameters(rp10);
                //this.ReportViewer1.LocalReport.SetParameters(rp11);

                Warning[] warnings;

                string mimeType, encoding, fileNameExtension;

                string[] streams;

                if (this.excel == 1)
                {
                    Byte[] xlsContent = this.ReportViewer1.LocalReport.Render("Excel", null, out mimeType, out encoding, out fileNameExtension, out streams, out warnings);

                    String filename = string.Format("{0}.{1}", "Stocks", "xls");

                    this.Response.Clear();
                    this.Response.Buffer = true;
                    this.Response.ContentType = "application/ms-excel";
                    this.Response.AddHeader("Content-Disposition", "attachment;filename=" + filename);
                    //this.Response.AddHeader("content-length", pdfContent.Length.ToString());
                    this.Response.BinaryWrite(xlsContent);

                    this.Response.End();
                }
                else
                {
                    //get pdf content

                    Byte[] pdfContent = this.ReportViewer1.LocalReport.Render("PDF", null, out mimeType, out encoding, out fileNameExtension, out streams, out warnings);

                    this.Response.Clear();
                    this.Response.Buffer = true;
                    this.Response.ContentType = "application/pdf";
                    this.Response.AddHeader("content-length", pdfContent.Length.ToString());
                    this.Response.BinaryWrite(pdfContent);

                    this.Response.End();

                }
                //this.ReportViewer1.LocalReport.DataSources.Add(rds2);
                //this.ReportViewer1.LocalReport.DataSources.Add(rds3);
                //this.ReportViewer1.LocalReport.DataSources.Add(rds4);
                //this.ReportViewer1.LocalReport.DataSources.Add(rds5);
                //this.ReportViewer1.LocalReport.DataSources.Add(rds6);
                //this.ReportViewer1.LocalReport.Refresh();
            }
            catch (Exception ex)
            { }
        }
    }
}