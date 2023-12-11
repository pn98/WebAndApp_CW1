<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html> 
      <body>
        <h2>
          <xsl:value-of select="ServiceInterface/@name"/>
        </h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th style="text-align:left">Method</th>
            <th style="text-align:left">Return Type</th>
            <th style="text-align:left">Input Parameters</th>
            <th style="text-align:left">Number of Exceptions</th>
          </tr>
          <xsl:for-each select="ServiceInterface/abstract_method">
            <tr>

              <td>
                <b><xsl:value-of select="@id"/></b>
              </td>

              <td>
                <xsl:value-of select="return"/>
              </td>

              <td>
                <xsl:for-each select="parameterList/parameter">
                  <xsl:value-of select="."/>
                    <xsl:text>:</xsl:text>
                  <xsl:value-of select="@type"/>
                  <xsl:if test="position() &lt; last()">
                    <xsl:text>, </xsl:text>
                  </xsl:if>  
                </xsl:for-each>
              </td>

              <td>
                <xsl:value-of select="count(exceptions/throws)"/>
              </td>

            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>