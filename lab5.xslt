<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt"
                exclude-result-prefixes="msxsl">
    <xsl:output method="html"
                indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Lab 5</title>
            </head>
            <style type="text/css">
                body {background-color: cornsilk;}
                table {border: 1px solid black; border-spacing: 10px; width: 50%; margin-left: 25%; margin-right: 25%;}
                th {text-align: center; background-color: black; color: blue; column-span: all; font-size: 32px;}
                td {text-align: left; color: blue}
            </style>
            <body>
                <table>
                    <tr>
                        <th>Computer Science Majors</th>
                    </tr>
                    <xsl:apply-templates select="students/student"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="student">
        <xsl:if test="self::node()[major = 'CS:BS']">
            <tr>
                <td>
                    <xsl:apply-templates select="id"/>
                    <xsl:apply-templates select="lastName"/>
                    <xsl:apply-templates select="firstName"/>
                    <xsl:apply-templates select="dateEnrolled"/>
                    <xsl:apply-templates select="major"/>
                </td>
            </tr>
        </xsl:if>
    </xsl:template>

    <xsl:template match="id">
        <p>ID:
            <xsl:value-of select="."/>
        </p>
    </xsl:template>

    <xsl:template match="lastName">
        Name: <xsl:value-of select="."/>,

    </xsl:template>

    <xsl:template match="firstName">
        <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="dateEnrolled">
        <p>Date-enrolled:
            <xsl:value-of select="."/>
        </p>

    </xsl:template>

    <xsl:template match="major">
        <p>Major:
            <xsl:value-of select="."/> Declared in:
            <xsl:value-of select="@catalogYear"/>
        </p>
        <xsl:if test="@catalogYear &gt; 2008">
            <p style="color: red; font-weight: bold;">Must complete the Senior Project Course.</p>
        </xsl:if>
        <br/>
        <br/>
        <br/>
    </xsl:template>

</xsl:stylesheet>
