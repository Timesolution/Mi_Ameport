<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CanjesF.aspx.cs" Inherits="Mi_Ameport.CanjesF" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-12">
            <h2>Canjes Disponibles</h2>
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
            <asp:PlaceHolder ID="phPremios" runat="server"></asp:PlaceHolder>
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
