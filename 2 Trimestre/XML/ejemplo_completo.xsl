<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" method="text"/>
    
	<xsl:template match="/equipos">
		<xsl:element name="discos">
			<xsl:apply-templates select="/equipos/máquina/hardware/disco"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="/equipos/máquina/hardware/disco">	
		<xsl:element name="disco" use-attribute-sets="atr_disco">
		</xsl:element>
	</xsl:template>
	
	<xsl:attribute-set name="atr_disco">
		<xsl:attribute name="tecnoloxía">
			<xsl:value-of select="@tecnoloxía"/>
		</xsl:attribute>
		<xsl:attribute name="capacidade">
			<xsl:value-of select="@capacidade"/>
		</xsl:attribute>
		<xsl:attribute name="máquina">
			<xsl:value-of select="../../@nome"/>
		</xsl:attribute>		
	</xsl:attribute-set>
	
</xsl:stylesheet>