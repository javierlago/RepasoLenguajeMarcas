﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
  <head>
  </head>
  <body>
	  <h2>My CD Collection</h2>
	  <table border="1">
		  <tr bgcolor="green">
		  <th>Title</th>
		  <th>Artist</th>
		  <th>Year</th>
		  </tr>
		  <xsl:apply-templates match="catalog/cd"/>
	  </table>
  </body>
  </html>
  </xsl:template>
  
  <xsl:template match="cd">
	<tr>
	<td><xsl:value-of select="title"/></td>
	<td><xsl:value-of select="artist"/></td>
	<td><xsl:value-of select="year"/></td>
	</tr>  
  </xsl:template>
</xsl:stylesheet>
