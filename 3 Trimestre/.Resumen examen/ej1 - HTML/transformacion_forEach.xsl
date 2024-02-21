<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" indent="yes" />

  <xsl:template match="/">
    <html>
      <head>
        <title>Prueba Examen</title>
      </head>
      <body>
        <table border="1">
          <tr>
            <th></th>
            <th>Autor</th>
            <th>Nombre</th>
            <th>Puntuacion</th>
          </tr>
		  <xsl:for-each select="pruebaexamen/biblioteca/libros/libro">
			<tr>
			  <td>
				<xsl:value-of select="@id"/>
			  </td>
			  <td>
				<xsl:value-of select="autor"/>
			  </td>
			  <td>
				<xsl:value-of select="nombre"/>
			  </td>
			  <td>
				<xsl:value-of select="puntuacion"/>
			  </td>
			</tr>		  
		  </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
