<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <items>
      <xsl:for-each select="//Package">
        <item ID="{ID}" Name="{Name}" Type="{Type}" />
      </xsl:for-each>
    </items>
  </xsl:template>
</xsl:stylesheet>