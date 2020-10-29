<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt"
                exclude-result-prefixes="msxsl">
    <xsl:output method="html"
                indent="yes" />
    <xsl:template match="/">
        <html>
            <head>Assignment 2: Michael's Favorite Movies</head>
        </html>
        <body>
            <h1>Pre 2005 Movies</h1>
            <table style="border: 1px solid black; border-spacing: 10px; width: 80%; margin-left: 10%; margin-right: 10%;">
                <xsl:apply-templates select="movies/movie" />
            </table>
        </body>
    </xsl:template>

    <xsl:template match="movie">
        <xsl:if test="year &lt;= 2005">
            <tr>
                <td><xsl:value-of select="@id" /></td>
                <td><xsl:value-of select="title" /></td>
                <td><xsl:value-of select="director" /></td>
                <td><xsl:value-of select="year" /></td>
            </tr>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
