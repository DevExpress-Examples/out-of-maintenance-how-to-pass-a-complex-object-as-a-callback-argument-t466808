<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="PassComplexObjectInCallback.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to pass complex objects to a callback Action as callback arguments</title>
    <link href="Content/styles.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function OnButtonClick() {
            callbackPanel.PerformCallback(GetSerializationData());
        }
        function GetSerializationData() {
            var editorsNames = ["Name", "Age", "Email", "ArrivalDate"];
            var editorsValues = {};
            for (var i = 0; i < editorsNames.length; i++) {
                var control = ASPxClientControl.GetControlCollection().GetByName(editorsNames[i]);
                editorsValues[control.name] = control.GetValue();
            }
            return JSON.stringify(editorsValues);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="edit_form">
            <div class="line">
                <dx:ASPxLabel runat="server" ID="NameLabel" AssociatedControlID="Name" Text="Name:" CssClass="label"></dx:ASPxLabel>
                <dx:ASPxTextBox runat="server" ID="Name" CssClass="editor"></dx:ASPxTextBox>
            </div>
            <div class="line">
                <dx:ASPxLabel runat="server" ID="AgeLabel" AssociatedControlID="Age" Text="Age:" CssClass="label"></dx:ASPxLabel>
                <dx:ASPxSpinEdit runat="server" ID="Age" MinValue="0" MaxValue="1000" CssClass="editor"></dx:ASPxSpinEdit>
            </div>
            <div class="line">
                <dx:ASPxLabel runat="server" ID="EmailLabel" AssociatedControlID="Email" Text="Email:" CssClass="label"></dx:ASPxLabel>
                <dx:ASPxTextBox runat="server" ID="Email" CssClass="editor"></dx:ASPxTextBox>
            </div>
            <div class="line">
                <dx:ASPxLabel runat="server" ID="DateLabel" AssociatedControlID="ArrivalDate" Text="Arrival Date:" CssClass="label"></dx:ASPxLabel>
                <dx:ASPxDateEdit runat="server" ID="ArrivalDate" CssClass="editor"></dx:ASPxDateEdit>
            </div>
            <div class="line">
                <dx:ASPxLabel runat="server" ID="ButtonsLabel" Text="" CssClass="label"></dx:ASPxLabel>
                <dx:ASPxButton runat="server" ID="btnUpdate" CssClass="button" AutoPostBack="false" Text="Update">
                    <ClientSideEvents Click="OnButtonClick" />
                </dx:ASPxButton>
                <dx:ASPxButton runat="server" ID="btnClear" CssClass="button" AutoPostBack="false" Text="Clear">
                    <ClientSideEvents Click="function(s, e){ ASPxClientEdit.ClearEditorsInContainer(); }" />
                </dx:ASPxButton>
            </div>
        </div>
        <dx:ASPxCallbackPanel runat="server" ID="callbackPanel" Width="200px"
            CssClass="InlineClass"
            OnCallback="callbackPanel_Callback">
            <PanelCollection>
                <dx:PanelContent>
                    <%
                    If IsPostBack Then
                    %>
                    <div runat="server" id="ErrorFrame"></div>
                    <div runat="server" id="PostedInfo">
                        <div><span>Name:
                            <dx:ASPxLabel runat="server" ID="NameText"></dx:ASPxLabel>
                        </span></div>
                        <div><span>Age:
                            <dx:ASPxLabel runat="server" ID="AgeText"></dx:ASPxLabel>
                        </span></div>
                        <div><span>Email:
                            <dx:ASPxLabel runat="server" ID="EmailText"></dx:ASPxLabel>
                        </span></div>
                        <div><span>Arrival Date:
                            <dx:ASPxLabel runat="server" ID="ArrivalDateText"></dx:ASPxLabel>
                        </span></div>
                    </div>
                    <%
                    End If
                    %>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxCallbackPanel>
    </form>
</body>
</html>