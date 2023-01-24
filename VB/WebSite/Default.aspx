﻿<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

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
                    <DataItemTemplate>
                        <%#XPath("ID")%>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Name">
                    <DataItemTemplate>
                        <%#XPath("Name")%>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Type">
                    <DataItemTemplate>
                        <%#XPath("Type")%>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsBehavior AllowSort="false" />
        </dx:ASPxGridView>
    </div>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/XMLFile.xml" EnableCaching="false">
    </asp:XmlDataSource>
    <asp:Button runat="server" />
    </form>
</body>
</html>