<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AgregarMateria.aspx.vb" Inherits="Unidad_4___Actividad_2___CRUD_con_ASP.NET.AgregarMateria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p>
        <br />
    </p>


    <p class="text-center" style="font-size: large">
        <strong>AGREGAR MATERIA</strong></p>

    <table align="center" style="width: 60%; border: 2px solid #0066FF; background-color: #99CCFF">
        <tr>
            <td class="text-right" style="width: 114px">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px">Nombre</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:TextBox ID="txtNombre" runat="server" Width="258px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Ingrese nombre de materia"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px; height: 24px;"></td>
            <td style="width: 33px; height: 24px;"></td>
            <td style="width: 561px; height: 24px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px">Código</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:TextBox ID="TxtCodigo" runat="server" Width="122px" Enabled="False"></asp:TextBox>
&nbsp;
                <asp:Button ID="btnGenerarCodigos" runat="server" Text="Generar código" Width="142px" Height="36px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" />
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" style="height: 34px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 114px">&nbsp;</td>
            <td style="width: 33px">&nbsp;</td>
            <td style="width: 561px">
                &nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>

</asp:Content>
