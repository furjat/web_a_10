<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="4.01" encoding="UTF-8" indent="yes"/>

	<xsl:template match="kalendarium">
		<html>
			<head>
				<title>Kalendarium szkolen</title>
			</head>
			<body>
				<h1>Kalendarium szkolen</h1>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="grupa">
		<h2>
			<xsl:value-of select="@nazwa"/>
		</h2>
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="podgrupa">
		<h3>
			<xsl:value-of select="@nazwa"/>
		</h3>
		<table border="1" cellspacing="2" cellpadding="2">
			<tbody>
				<tr bgcolor="#DDDDDD">
					<th>kod</th>
					<th>nazwa</th>
					<th>czas</th>
					<th>cena</th>
				</tr>
				<xsl:apply-templates/>
			</tbody>
		</table>
		<br/>
	</xsl:template>

	<xsl:template match="kurs">
		<tr>
			<td>
				<xsl:value-of select="kod"/>
			</td>
			<td>
				<xsl:value-of select="nazwa"/>
			</td>
			<td>
				<xsl:value-of select="czas"/>
			</td>
			<td>
				<xsl:value-of select="cena"/>
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>