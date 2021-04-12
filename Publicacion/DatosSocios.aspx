<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DatosSocios.aspx.cs" Inherits="Mi_Ameport.DatosSocios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper wrapper-content">
        <div class="row animated fadeInRight">
            <div class="col-md-4">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Mediador</h5>
                    </div>
                    <div>
                        <div class="ibox-content no-padding border-left-right">
                            <%--<img alt="image" class="img-responsive" src="/../img/profile_big.jpg">--%>
                            <asp:Image ID="Image1" alt="image" class="img-responsive" runat="server" ImageUrl="~/Imagenes/Mediadores/No_Picture.jpg" />
                        </div>
                        <div class="ibox-content profile-content">
                            <%--Nombre--%>
                            <h4><strong>
                                <asp:Literal ID="LitNombre" runat="server"></asp:Literal></strong></h4>
                            <%--Telefono medidador--%>
                            <p>
                                <i class="fa fa-phone"></i>
                                <asp:Literal ID="LitTelefono" runat="server"></asp:Literal>
                            </p>
                            <%--Mail medidador--%>
                            <p>
                                <i class="fa fa-envelope"></i>
                                <asp:Literal ID="LitMail" runat="server"></asp:Literal>
                            </p>
                            <%--Documentos medidador--%>
                            <p>
                                <i class="fa fa-list-alt"></i>
                                <asp:Literal ID="LitDocumentos" runat="server"></asp:Literal>
                            </p>
                            <%--Direccion medidador--%>
                            <p>
                                <i class="fa fa-map-marker"></i>
                                <asp:Literal ID="LitDireccion" runat="server"></asp:Literal>
                            </p>

                            <h5>Sobre Mi
                            </h5>
                            <p>
                                <asp:Literal ID="LitSobreMi" runat="server"></asp:Literal>
                            </p>
                            <div class="hr-line-dashed"></div>
                            <div class="user-button">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <asp:Button ID="btnSubir" runat="server" class="btn btn-primary btn-sm btn-block" Text="Subir Imagen" ClientIDMode="Static" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-8">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Datos</h5>
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
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>


                                <div class="form-horizontal">
                                    <div class="form-horizontal">

                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Apellido</label>

                                            <div class="col-sm-10">
                                                <asp:TextBox ID="txtApellido" class="form-control" runat="server"></asp:TextBox>
                                                <span class="help-block m-b-none">
                                                    <asp:RequiredFieldValidator ValidationGroup="Mediador" ControlToValidate="txtApellido" ID="RequiredFieldValidator2" SetFocusOnError="true" ForeColor="Red" runat="server" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>

                                                </span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Nombre</label>
                                            <div class="col-sm-10">
                                                <asp:TextBox ID="txtNombre" class="form-control" runat="server"></asp:TextBox>
                                                <span class="help-block m-b-none">
                                                    <asp:RequiredFieldValidator ValidationGroup="Mediador" ControlToValidate="txtNombre" ID="RequiredFieldValidator3" SetFocusOnError="true" ForeColor="Red" runat="server" ErrorMessage="Campo Obligatorio"></asp:RequiredFieldValidator>

                                                </span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">DNI</label>
                                            <div class="col-sm-10">
                                                <asp:TextBox ID="txtDni" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Socio N°</label>
                                            <div class="col-sm-10">
                                                <asp:TextBox ID="txtNroSocio" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Sexo</label>
                                            <div class="col-sm-10">
                                                <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Fecha Nacimiento</label>
                                            <div class="col-sm-10">
                                                <asp:TextBox ID="txtFechaNac" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Estado Civil</label>
                                            <div class="col-sm-10">
                                                <asp:DropDownList ID="ListEstadoCivil" class="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Nacionalidad</label>
                                            <div class="col-sm-10">
                                                <asp:DropDownList ID="ListNacionalidad" class="form-control" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Domicilio</label>
                                            <div class="col-sm-10">
                                                <asp:TextBox ID="txtDomicilio" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="hr-line-dashed"></div>


                                        <div class="form-group">
                                            <div class="col-sm-4 col-sm-offset-2">
                                                <button class="btn btn-white" type="submit">Cancel</button>
                                                <%--<button class="btn btn-primary" type="submit">Save changes</button>--%>
                                                <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" ValidationGroup="Mediador" />
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </ContentTemplate>

                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
