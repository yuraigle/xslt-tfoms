<!--
	Преобразование запроса страховой принадлежности QBP_ZP1
	На входе - XML (*.uprmes)
	На выходе - CSV файл с разделителем TAB
-->
<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:h="urn:hl7-org:v2xml">
	<xsl:output method="text" />
	<xsl:template match="/">
		<xsl:for-each select="h:UPRMessageBatch/h:QBP_ZP1">
			<!-- ИД сообщения -->
			<xsl:value-of select="h:MSH/h:MSH.10"/>
			<xsl:text>&#09;</xsl:text>
			<!-- Фамилия -->
			<xsl:value-of select="h:QPD/h:QPD.6/h:XPN.1/h:FN.1"/>
			<xsl:text>&#09;</xsl:text>
			<!-- Имя -->
			<xsl:value-of select="h:QPD/h:QPD.6/h:XPN.2"/>
			<xsl:text>&#09;</xsl:text>
			<!-- Отчество -->
			<xsl:value-of select="h:QPD/h:QPD.6/h:XPN.3"/>
			<xsl:text>&#09;</xsl:text>
			<!-- ДР -->
			<xsl:value-of select="h:QPD/h:QPD.7"/>
			<xsl:text>&#09;</xsl:text>
			<!-- Пол -->
			<xsl:value-of select="h:QPD/h:QPD.8"/>
			<xsl:text>&#09;</xsl:text>
			<!-- МР -->
			<xsl:value-of select="h:QPD/h:QPD.9"/>
			<xsl:text>&#09;</xsl:text>
			<!-- ЕНП -->
			<xsl:value-of select="h:QPD/h:QPD.5[h:CX.5='NI']/h:CX.1"/>
			<xsl:text>&#09;</xsl:text>
			<!-- СНИЛС -->
			<xsl:value-of select="h:QPD/h:QPD.5[h:CX.5='PEN']/h:CX.1"/>
			<xsl:text>&#09;</xsl:text>
			<!-- 1й документ -->
			<xsl:value-of select="h:QPD/h:QPD.5[number(h:CX.5)=number(h:CX.5)][1]/h:CX.5"/>
			<xsl:text>&#09;</xsl:text>
			<xsl:value-of select="h:QPD/h:QPD.5[number(h:CX.5)=number(h:CX.5)][1]/h:CX.1"/>
			<xsl:text>&#09;</xsl:text>
			<!-- 2й документ -->
			<xsl:value-of select="h:QPD/h:QPD.5[number(h:CX.5)=number(h:CX.5)][2]/h:CX.5"/>
			<xsl:text>&#09;</xsl:text>
			<xsl:value-of select="h:QPD/h:QPD.5[number(h:CX.5)=number(h:CX.5)][2]/h:CX.1"/>
			<xsl:text>&#13;</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
