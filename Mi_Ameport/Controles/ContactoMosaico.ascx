<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactoMosaico.ascx.cs" Inherits="Media.ContactoMosaico" %>
 <div class="col-lg-4">
    <div class="contact-box">
        <div class="col-sm-4">
            <div class="text-center">
                <asp:Image alt="image" class="img-circle m-t-xs img-responsive" ID="Imagen" runat="server" />
            </div>
        </div>
        <div class="col-sm-8">
            <h3><asp:Literal ID="LitPuntos" runat="server"></asp:Literal></strong></h3>
            <p><asp:Literal ID="LitDescripcion" runat="server"></asp:Literal></p>
            <p><asp:Literal ID="LitMarca" runat="server"></asp:Literal></p>
            
            <%--<asp:LinkButton ID="btnSeleccionar" Visible="false" class="btn btn-info btn-circle" runat="server" ><i class="fa fa-search"></i></asp:LinkButton>--%>
            <a id="btnLink" runat="server" href="/" target="_blank" class="btn btn-info btn-circle"><i class="fa fa-search"></i></a>
        </div>
        <div class="clearfix"></div>
            
    </div>
</div>