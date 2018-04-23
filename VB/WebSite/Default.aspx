<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v9.3, Version=9.3.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="XmlDataSource1"
			KeyFieldName="ID" AutoGenerateColumns="false">
			<Columns>
				<dxwgv:GridViewDataTextColumn FieldName="ID">
					<DataItemTemplate>
						<%#XPath("ID")%>
					</DataItemTemplate>
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="Name">
					<DataItemTemplate>
						<%#XPath("Name")%>
					</DataItemTemplate>
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="Type">
					<DataItemTemplate>
						<%#XPath("Type")%>
					</DataItemTemplate>
				</dxwgv:GridViewDataTextColumn>
			</Columns>
			<SettingsBehavior AllowSort="false" />
		</dxwgv:ASPxGridView>
	</div>
	<asp:XmlDataSource runat="server" DataFile="~/XMLFile.xml" ID="XmlDataSource1" EnableCaching="false">
	</asp:XmlDataSource>
	</form>
</body>
</html>