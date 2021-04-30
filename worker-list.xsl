<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" indent="yes" encoding="UTF-8" />
<xsl:template match="/">
	<html>
		<head>
			<title>Firma Krzak</title>
		</head>
		<body>
			<h1>Firma Krzak</h1>
			<ul>
			<xsl:for-each select="workers/person">
				<li><xsl:value-of select="name" />
					<xsl:text> </xsl:text>
				<xsl:value-of select="surname" /></li>
			</xsl:for-each>
			</ul>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>