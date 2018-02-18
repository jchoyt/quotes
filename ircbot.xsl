<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


    <xsl:template match="book">
        <xsl:apply-templates></xsl:apply-templates>
    </xsl:template>

    <xsl:template match="chapter">
        <xsl:apply-templates></xsl:apply-templates>
    </xsl:template>

    <xsl:template match="blockquote">
            <xsl:call-template name="para"></xsl:call-template>
            <xsl:call-template name="who"></xsl:call-template>
    </xsl:template>

    <xsl:template name="para">
        <xsl:for-each select="para">
                <xsl:apply-templates></xsl:apply-templates> / </xsl:for-each>
    </xsl:template>

    <xsl:template name="who">
        <xsl:for-each select="attribution">  (<xsl:value-of select="."/>)
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="emphasis">*<xsl:value-of select="."/>*</xsl:template>

    <xsl:template match="preface"></xsl:template>

    <xsl:template match="title"></xsl:template>

</xsl:stylesheet>
