<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template select="body">
		<xsl:for-each select="p">
			<xsl:apply-templates/>
		</xsl:for-each>
		<xsl:for-each select="caption">
			<xsl:value-of select="title"/>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="*"/>
</xsl:stylesheet>