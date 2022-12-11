Public Class Login
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Dim usuario As New Usuario

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        usuario.user = txtNombre.Text
        usuario.pass = txtClave.Text

        Dim dt As DataTable = usuario.login

        If (dt.Rows.Count > 0) Then
            Session("Usuario") = txtNombre.Text
            Response.Redirect("Default.aspx")

        Else

            MsgBox("Datos erroneos")

        End If
    End Sub
End Class