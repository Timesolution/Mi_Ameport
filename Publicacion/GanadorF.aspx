<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GanadorF.aspx.cs" Inherits="Mi_Ameport.GanadorF" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-12">
            <h2>Premios</h2>
            <%--<ol class="breadcrumb">--%>

            <div class="form-horizontal">
                <div class="form-group">
                    <div class="col-sm-6">
                    </div>
                    <div class="col-sm-5">
                    </div>
                    <div class="pull-right">

                        <%--AQUI DEBE IR A BUSCAR EL FORM DEPENDIENDO DEL PARAMETRO PASADO EN T. POR EJEMPLO SI T = 2 (COMPAÑIAS) DEBER ABRIR CompaniaABM.aspx?a=1--%>
                    </div>
                </div>
            </div>
            <%--</ol>--%>
        </div>
    </div>

    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        Ultimo Ganador
                    </div>
                    <div class="panel-body">
                        <div class="jumbotron">
                            <h1 style="font-weight: bold"><asp:Literal ID="LitNroGanador" runat="server"></asp:Literal></h1>
                            <h1 style="font-weight: bold"><asp:Literal ID="LitGanador" runat="server"></asp:Literal></h1>
                            <p style="font-weight: bold"><asp:Literal ID="LitOrganismo" runat="server"></asp:Literal></p>
                            <p style="font-weight: bold"><asp:Literal ID="LitSorteo" runat="server"></asp:Literal></p>
                        </div>
                    </div>
                </div>
            </div>
           <%-- <div class="col-lg-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Sorteo Anual
                    </div>
                    <div class="panel-body">
                        <div class="jumbotron">
                            <h1>VIAJE PARA 2 PERSONAS </h1>
                            <p>3 días en Cataratas del Iguazú o el Calafate para 2 personas (Hotel y Traslados) + $3.000.- en efectivo</p>
                        </div>

                    </div>
                </div>--%>
            </div>
           
           

        </div>
    </div>

    <!-- Mainly scripts -->
    <%--<script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>


    <script>
        $(document).ready(function () {
            $('.contact-box').each(function () {
                animationHover(this, 'pulse');
            });
        });
    </script>--%>

</asp:Content>
