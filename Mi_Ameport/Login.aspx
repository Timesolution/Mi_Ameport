<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mi_Ameport.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Mi Ameport</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">

        <div class="middle-box text-center loginscreen  animated fadeInDown">
            <div>
                <div>

                    <h1 class="logo-name"><img src="img/Logo_Ameport.jpg" alt="Image Alternative text" title="Image Title" /></h1>

                </div>
                <h3>Bienvenido a VIVI AMEPORT</h3>
                <p>
                    El portal de socios de Ameport
                <!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
                </p>
                <%--<p>Inicie Sesión para verla en acción.</p>--%>
                <div class="m-t" role="form" >
                    <div class="form-group">
                        <%--<input type="text" class="form-control" runat="server" id="txtUsuario" placeholder="Username" required="">--%>
                        <asp:TextBox ID="txtUsuario" runat="server" class="form-control" placeholder="DNI" required="" ></asp:TextBox>
                    </div>
                    <%--<div class="form-group">
                        
                        <asp:TextBox ID="txtContraseña" runat="server" class="form-control" placeholder="Contraseña" required="" TextMode="Password"></asp:TextBox>
                    </div>--%>
                    <asp:Button ID="btnIniciarSesion" class="btn btn-primary block full-width m-b" runat="server" Text="Inicia Sesión" OnClick="btnIniciarSesion_Click" />
                    <%--<button type="submit" class="btn btn-primary block full-width m-b">Login</button>--%>

                   <%-- <a href="#"><small>Forgot password?</small></a>

                    <p class="text-muted text-center"><small>Do not have an account?</small></p>
                    <a class="btn btn-sm btn-white btn-block" href="register.html">Create an account</a>--%>
                </div>
                <p class="m-t"><small><a target="_blank" href="http://www.timesolution.com.ar">Time Solution Software</a>&copy; 2015</small> </p>
            </div>
        </div>

        <!-- Mainly scripts -->


    </form>
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
