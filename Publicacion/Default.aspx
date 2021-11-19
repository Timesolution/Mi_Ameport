<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mi_Ameport.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-3">
            <div class="widget style1 blue-bg">
                <div class="row">
                    <div class="col-xs-4">
                        <i class="fa fa-toggle-right fa-5x"></i>
                    </div>
                    <div class="col-xs-8 text-right">
                        <span>Puntos Acumulados</span>
                        <h2 class="font-bold">
                            <asp:Literal ID="LitPuntosAcum" Text="0" runat="server"></asp:Literal></h2>
                    </div>
                </div>
            </div>
        </div>


        <div class="col-lg-3">
            <div class="widget style1 lazur-bg">
                <div class="row">
                    <div class="col-xs-4">
                        <i class="fa fa-spinner fa-5x"></i>
                    </div>
                    <div class="col-xs-8 text-right">
                        <span>Numeros Mensuales </span>
                        <h2 class="font-bold">
                            <asp:Literal ID="LitNumeros" Text="0" runat="server"></asp:Literal>
                        </h2>
                    </div>
                </div>
            </div>
        </div>


        <div class="col-lg-3">
            <div class="widget style1 lazur-bg">
                <div class="row">
                    <div class="col-xs-4">
                        <i class="fa fa-spinner fa-5x"></i>
                       
                    </div>
                    <div class="col-xs-8 text-right">
                        <span>Numeros Anuales </span>
                        <h2 class="font-bold">
                            <asp:Literal ID="LitNumerosAnuales" Text="0" runat="server"></asp:Literal>
                        </h2>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3">
            <div class="widget style1 yellow-bg">
                <div class="row">
                    <div class="col-xs-4">
                        <i class="fa fa-list-ol fa-5x"></i>
                    </div>
                    <div class="col-xs-8 text-right">
                        <span>Ranking </span>
                        <h2 class="font-bold">
                            <asp:Literal ID="LitRanking" Text="0" runat="server"></asp:Literal>
                        </h2>
                    </div>
                </div>
            </div>
        </div>

    </div>


    <div class="row">
        <%--Ranking--%>
        <div class="col-lg-6">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Ranking</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th style="width: 10%; text-align: right">Posicion</th>
                                    <th style="width: 70%">Socio</th>
                                    <th style="width: 20%">Puntos</th>

                                </tr>
                            </thead>
                            <tbody>
                                <asp:PlaceHolder ID="phRanking" runat="server"></asp:PlaceHolder>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <%--Puntos--%>
        <div class="col-lg-6">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Puntos</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th style="width: 20%; text-align: right">Fecha</th>
                                    <th style="width: 70%">Descripcion</th>
                                    <th style="width: 10%">Puntos</th>
                                    <%-- <th style="width: 23%; text-align: right"></th>--%>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:PlaceHolder ID="phPuntos" runat="server"></asp:PlaceHolder>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <asp:UpdatePanel ID="UpdateMensuales" runat="server">
            <ContentTemplate>
                <asp:PlaceHolder ID="phNumMensuales" runat="server">

                    <div class="col-lg-6">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>Numeros del Mes</h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>
                                    <a target="_blank" runat="server" id="linkMes" href="Reportes.aspx"><i class="fa fa-print"></i></a> 
                                    <%--<a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>--%>
                                </div>
                            </div>
                            <div class="ibox-content">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th style="width: 30%">Serie</th>
                                                <th style="width: 70%">Numero Asignado</th>
                                                <%--<th style="width: 20%">Puntos</th>--%>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:PlaceHolder ID="phNumerosMensuales" runat="server"></asp:PlaceHolder>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:PlaceHolder>
                <%--PuntosAnual--%>
            </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdatePanel ID="UpdateAnual" runat="server">
            <ContentTemplate>
                <asp:PlaceHolder ID="phNumAnuales" runat="server">
                    <div class="col-lg-6">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>Numeros del Año</h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>
                                    <a target="_blank" runat="server" id="linkAnio" href="Reportes.aspx"><i class="fa fa-print"></i></a> 
                                    <%--<a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>--%>
                                </div>
                            </div>
                            <div class="ibox-content">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th style="width: 30%">Serie</th>
                                                <th style="width: 70%">Numero Asignado</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:PlaceHolder ID="phNumeroAnual" runat="server"></asp:PlaceHolder>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:PlaceHolder>

            </ContentTemplate>
        </asp:UpdatePanel>
    </div>


</asp:Content>
