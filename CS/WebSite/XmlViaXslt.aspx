<%@ Page Language="C#" AutoEventWireup="true" CodeFile="XmlViaXslt.aspx.cs" Inherits="XmlViaXslt" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="XmlDataSource1"
            KeyFieldName="ID" AutoGenerateColumns="false" EnableRowsCache="false">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="ID">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Name">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Type">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
    </div>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/XMLFile.xml" TransformFile="~/App_Data/XSLTFile.xslt"  EnableCaching="false">
    </asp:XmlDataSource>
    <asp:Button runat="server" />
    </form>
</body>
</html>