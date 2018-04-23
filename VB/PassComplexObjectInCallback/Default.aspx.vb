Imports PassComplexObjectInCallback.Models
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.Script.Serialization
Imports System.Web.UI
Imports System.Web.UI.WebControls

Namespace PassComplexObjectInCallback
    Partial Public Class [Default]
        Inherits System.Web.UI.Page

        Protected Sub callbackPanel_Callback(ByVal sender As Object, ByVal e As DevExpress.Web.CallbackEventArgsBase)
            Dim data As MyData = GetSerializationObject(e.Parameter)
            NameText.Text = data.Name
            EmailText.Text = data.Email
            AgeText.Text = If(data.Age IsNot Nothing, data.Age.ToString(), "")
            ArrivalDateText.Text = If(data.ArrivalDate IsNot Nothing, data.ArrivalDate.ToString(), "")
        End Sub

        Private Function GetSerializationObject(ByVal jsonText As String) As MyData
            If String.IsNullOrEmpty(jsonText) Then
                Return Nothing
            End If

            Dim data As MyData = Nothing
            Try
                data = (New JavaScriptSerializer()).Deserialize(Of MyData)(jsonText)
            Catch
                ErrorFrame.InnerText = "An error has occured while parsing entered data."
            End Try

            Return data
        End Function
    End Class
End Namespace