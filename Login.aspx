<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Unidad_4___Actividad_2___CRUD_con_ASP.NET.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            border: 2px solid #0000FF;
            background-color: #FFFF99;
        }
        .auto-style2 {
            color: #FF3300;
        }
        .auto-style3 {
            width: 357px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2" style="text-align: center">
            <strong>INGRESO AL SISTEMA</strong></div>


    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <table align="center" class="auto-style1">
        <tr>
            <td style="text-align: center" colspan="2">Inicio de sesion</td>
        </tr>
        <tr>
            <td class="auto-style3">Usuario</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Clave</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Iniciar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
