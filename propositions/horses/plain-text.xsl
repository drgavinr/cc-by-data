<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    
    <!-- Convert Propositions horse lists to plain text. -->
    
    <!-- Set up output formats. -->
    <xsl:output method="text" name="text"/>
    
    <!-- Strip space from tags that should not contain transcribed text. Line breaks will be added back in a predictable way by subsequent templates. Apparently no need to also specify preserve-space -->    
    <xsl:strip-space elements="page table account ul" />
    
    <!-- Include shared templates -->
    <xsl:include href="propositions-include.xsl"/>
    
    <!-- Main template -->
    <xsl:template match="/">
        <!-- Select each account and create separate output file for each. -->
        <xsl:for-each select="//account">
            <xsl:variable name="filename" select="concat('sp-28-131-',@n,'.txt')" />
            <xsl:result-document href="{$filename}" format="text">[TNA, <xsl:value-of select="@ref"/>]<xsl:apply-templates/></xsl:result-document>
            
        </xsl:for-each>
        
    </xsl:template>
    
    <!-- General elements that need nothing special, but templates need to be applied inside them. -->
    <xsl:template match="table|date|name"><xsl:apply-templates/></xsl:template>
    
    <!-- Anything that needs 2 line breaks before -->    
    <xsl:template match="p|entry|head"><xsl:text>

</xsl:text><xsl:apply-templates/></xsl:template>
    
    <!-- Anything that needs 1 line break before -->    
    <xsl:template match="ul|li"><xsl:text>
</xsl:text><xsl:apply-templates/></xsl:template>
    
    <!-- Templates for specific tags -->
    
<xsl:template match="page"><xsl:text>

</xsl:text>[f. <xsl:value-of select="@f"/>]<xsl:apply-templates/></xsl:template>
    
    
</xsl:stylesheet>