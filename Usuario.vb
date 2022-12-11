Imports Microsoft.VisualBasic
Imports System.Data
Public Class Usuario
    'instancia de la clase conexion
    Dim c As New conexion

    Private codUsuario As Integer
    Private nombreCompleto As String
    Private usuario As String
    Private clave As String

    'metodos de propiedad

    Public Property codUser() As Integer
        Get
            Return codUsuario
        End Get
        Set(value As Integer)
            codUsuario = value
        End Set
    End Property

    Public Property nomCompleto() As String
        Get
            Return nombreCompleto
        End Get
        Set(value As String)
            nombreCompleto = value
        End Set
    End Property

    Public Property user() As String
        Get
            Return usuario
        End Get
        Set(value As String)
            usuario = value
        End Set
    End Property

    Public Property pass() As String
        Get
            Return clave
        End Get
        Set(value As String)
            clave = value
        End Set
    End Property

    'funcion login

    Public Function login() As DataTable
        c.strcon.Open()
        With c.cmd
            .Connection = c.strcon
            .CommandText = "SELECT nombre FROM usuario WHERE usuario= '" & user & "' And clave = '" & pass & "'"
        End With
        c.da.SelectCommand = c.cmd
        c.da.Fill(c.dt)
        Return c.dt
    End Function

End Class
