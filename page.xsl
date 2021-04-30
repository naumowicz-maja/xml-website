<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
<xsl:template match="metadata">
	<html>
		<head>
			<title><xsl:value-of select="name"/></title>
		</head>
		<body>
			<h1><xsl:value-of select="name"/></h1>
			<address>
				<p><xsl:value-of select="address"/></p>
				<p><xsl:value-of select="contact"/></p>
			</address>
			<xsl:element name="div">
				<xsl:call-templates select="list" />
			</xsl:element>
		</body>
	</html>
</xsl:template>
<xsl:template match="workers" name="list">
	<table border="1">
		<tr>
				<th>ID</th>
				<th>IMIE</th>
				<th>NAZWISOKO</th>
				<th>DZIAL</th>
		</tr>
		<xsl:for-each select="person">
			<tr>
				<td><xsl:value-of select="id" /></td>
				<td><xsl:value-of select="name" /></td>
				<td><xsl:value-of select="surname" /></td>
				<td><xsl:value-of select="division" /></td>
			</tr>
		</xsl:for-each>
	</table>
</xsl:template>
</xsl:stylesheet>