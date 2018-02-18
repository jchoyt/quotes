<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


    <xsl:template match="book">
        <html>
            <head>
                <link rel="stylesheet" href="mrald.css" type="text/css" />
                <title>
                    <xsl:value-of select="title"/>
                </title>
                <style>
    body
    {
      color: black;
      background-color: rgb(243,242,235);
      font-family: verdana, helvetica, arial, sans-serif;
      font-size: 10pt;
      margin: 0;
      padding: 0;
    }

    .quote p
    {
      padding:3px;
      margin:0;
    }

    .quote
    {
      border-left: 1px solid rgb(216,210,195);
      border-bottom: 1px solid rgb(216,210,195);
      margin:.5em;
    }
    </style>
            </head>
            <body>
                <xsl:apply-templates></xsl:apply-templates>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="chapter">
        <xsl:apply-templates></xsl:apply-templates>
    </xsl:template>


    <xsl:template match="blockquote">
        <div class="quote">
            <xsl:call-template name="para"></xsl:call-template>
            <xsl:call-template name="who"></xsl:call-template>
        </div>
    </xsl:template>

    <xsl:template name="para">
        <xsl:for-each select="para">
            <xsl:element name="p">
                <xsl:apply-templates></xsl:apply-templates>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="who">
        <xsl:for-each select="attribution">
            <xsl:element name="p">
                <xsl:attribute name="style">text-align:right;</xsl:attribute>
                <xsl:value-of select="."/>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="emphasis">
        <i>
            <xsl:value-of select="."/>
        </i>
    </xsl:template>

    <xsl:template match="preface"></xsl:template>

    <xsl:template match="title"></xsl:template>

</xsl:stylesheet>
