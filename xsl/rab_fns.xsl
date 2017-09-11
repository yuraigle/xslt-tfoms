<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" />
	<xsl:template match="/">
		<xsl:variable name="file_id" select="Файл/@ИдФайл"/> 
		<xsl:for-each select="Файл/Документ/СвЗастрахЛиц">
			<xsl:value-of select="translate(@СНИЛС, ' -', '')"/><xsl:text>&#09;</xsl:text>
			<xsl:value-of select="translate(ФИОФЛ/@Фамилия, '&#09;', '')"/><xsl:text>&#09;</xsl:text>
			<xsl:value-of select="translate(ФИОФЛ/@Имя, '&#09;', '')"/><xsl:text>&#09;</xsl:text>
			<xsl:value-of select="translate(ФИОФЛ/@Отчество, '&#09;', '')"/><xsl:text>&#09;</xsl:text>
			<xsl:value-of select="@ДатаРожд"/><xsl:text>&#09;</xsl:text>
			<xsl:value-of select="@Пол"/><xsl:text>&#09;</xsl:text>
			<xsl:value-of select="@Гражд"/><xsl:text>&#09;</xsl:text>
			<xsl:value-of select="УдЛичнФЛ/@КодВидДок"/><xsl:text>&#09;</xsl:text>
			<xsl:value-of select="УдЛичнФЛ/@СерНомДок"/>
			<xsl:text>&#13;</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
