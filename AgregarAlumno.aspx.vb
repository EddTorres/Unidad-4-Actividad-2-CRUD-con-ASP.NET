Public Class AgregarAlumno
    Inherits System.Web.UI.Page

    Dim alumno As New Alumno

    Protected Sub btnGenerarCodigo_Click(sender As Object, e As EventArgs) Handles btnGenerarCodigos.Click

        If txtNombre.Text = "" Then
            MsgBox("Debe agregar un nombre")

        Else
            TxtCodigo.Text = alumno.generarCodigo(txtNombre.Text)
        End If

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
    End Sub
End Class