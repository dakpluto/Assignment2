<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt"
                exclude-result-prefixes="msxsl">
    <xsl:output method="html"
                indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Assignment 2: Michael's Favorite Movies</title>
            </head>
            <style type="text/css">
                body {background-color: cornsilk;}
                table {border: 1px solid black; border-spacing: 10px; float: left; width: 50%; margin-left: 25%; margin-right: 25%;}
                h1 {text-align: center; background-color: black; color: blue; column-span: all; font-size: 32px;}
                td {text-align: left; color: blue}
            </style>
            <body>
                <xsl:apply-templates select="movies/movie" />
            </body>
        </html>
    </xsl:template>

    <xsl:template match="movie">
        <xsl:if test="year &lt;= 2005">
            <table>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Director</th>
                    <th>Year</th>
                    <th>Genres</th>
                </tr>
                <tr>
                    <td><xsl:value-of select="@id" /></td>
                    <td><xsl:value-of select="title" /></td>
                    <td><xsl:value-of select="director" /></td>
                    <td><xsl:value-of select="year" /></td>
                </tr>
            </table>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
