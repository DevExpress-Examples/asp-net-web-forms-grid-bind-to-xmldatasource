# How to bind ASPxGridView with XmlDataSource


<p>This demo is based on the <a href="http://msdn.microsoft.com/en-us/library/aa479341.aspx">GridView Examples for ASP.NET 2.0: Accessing Data with the DataSource Controls</a> MSDN article. It illustrates how to bind the ASPxGridView with the <a href="http://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.xmldatasource%28VS.80%29.aspx">XmlDataSource</a> control.<br />The ASPxGridView generates its column automatically for the following XmlDataSource's structure:<br /><br /></p>


```XML
<root>
    <DataItem field1="..."  .../>
</root>
```


<p> </p>


```aspx
<dx:GridViewDataTextColumn FieldName="field1" />

```


<p><br />If it's necessary to bind the ASPxGridView with the XmlDataSource whose structure is non-standard:<br /><br /></p>


```xml
<root>
    <DataItem>
        <field1>...</field1>
    </DataItem>
</root>
```


<p><br />1) Use the XSLT technology to transform the underlying XML file in the required manner:<br /><br /></p>


```xml
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="<a href="http://www.w3.org/1999/XSL/Transform">http://www.w3.org/1999/XSL/Transform</a>">
  <xsl:template match="/">
    <items>
      <xsl:for-each select="//DataItem">
        <item field1="{field1}" />
      </xsl:for-each>
    </items>
  </xsl:template>
</xsl:stylesheet>
```


<p><br />2) Use the GridViewColumn's <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewGridViewDataColumn_DataItemTemplatetopic">DataItemTemplate</a> and an XPath expression:<br /><br /></p>


```aspx
<dx:GridViewDataTextColumn FieldName="field1">
    <DataItemTemplate>
        <%#XPath("field1")%>
    </DataItemTemplate>
</dx:GridViewDataTextColumn>

```


<p><br />To allow ASPxGridView sorting, it's necessary to implement the <a href="http://msdn.microsoft.com/en-us/library/system.xml.xpath.ixpathnavigable.aspx">IXPathNavigable</a> interface for the ASPxGridView.DataSource's type. Please refer to the <a href="http://msdn.microsoft.com/en-us/library/ms950764.aspx">XPath Querying Over Objects with ObjectXPathNavigator</a> MSDN article regarding this.<br /><br /><strong>See Also:<br /></strong><a href="https://www.devexpress.com/Support/Center/p/E2180">How to bind ASPxGridView with Xml Document via ObjectDataSource</a><br /><a href="https://www.devexpress.com/Support/Center/p/E2287">How to show long text in the PreviewRow using the ASPxCallback control</a></p>

<br/>


