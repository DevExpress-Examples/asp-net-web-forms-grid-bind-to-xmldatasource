<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128537987/13.2.12%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E2178)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->

# GridView for ASP.NET Web Forms - How to bind the grid to an XmlDataSource

This example demonstrates how to bind ASPxGridView to the [XmlDataSource](https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.xmldatasource?view=netframework-4.8.1&redirectedfrom=MSDN) control.

## Overview

This demo is based on the [GridView Examples for ASP.NET 2.0: Accessing Data with the DataSource Controls](https://learn.microsoft.com/en-us/previous-versions/dotnet/articles/aa479341(v=msdn.10)?redirectedfrom=MSDN) MSDN article. The ASPxGridView generates its column automatically for the following XmlDataSource's structure:

```XML
<root>
    <DataItem field1="..."  .../>
</root>
```

```aspx
<dx:GridViewDataTextColumn FieldName="field1" />
```

If it's necessary to bind the ASPxGridView to the XmlDataSource whose structure is non-standard:

```xml
<root>
    <DataItem>
        <field1>...</field1>
    </DataItem>
</root>
```
1. Use the XSLT technology to transform the underlying XML file in the required manner:

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

2. Use the GridViewColumn's [DataItemTemplate](https://docs.devexpress.com/AspNet/DevExpress.Web.GridViewDataColumn.DataItemTemplate) property and an XPath expression:

    ```aspx
    <dx:GridViewDataTextColumn FieldName="field1">
        <DataItemTemplate>
            <%#XPath("field1")%>
        </DataItemTemplate>
    </dx:GridViewDataTextColumn>
    ```

To allow ASPxGridView sorting, it's necessary to implement the <a href="http://msdn.microsoft.com/en-us/library/system.xml.xpath.ixpathnavigable.aspx">IXPathNavigable</a> interface for the ASPxGridView.DataSource's type. Please refer to the <a href="http://msdn.microsoft.com/en-us/library/ms950764.aspx">XPath Querying Over Objects with ObjectXPathNavigator</a> MSDN article regarding this.

## Files to Review

* [XMLFile.xml](./CS/WebSite/App_Data/XMLFile.xml)
* [XSLTFile.xslt](./CS/WebSite/App_Data/XSLTFile.xslt)
* [Default.aspx](./CS/WebSite/Default.aspx)
* [XmlViaXslt.aspx](./CS/WebSite/XmlViaXslt.aspx)
<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-grid-bind-to-xmldatasource&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-grid-bind-to-xmldatasource&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
