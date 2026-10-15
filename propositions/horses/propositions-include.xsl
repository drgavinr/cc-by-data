<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    
    <!-- Include file to ensure consistency across different transforms of propositions list to plain text or delimited text. All tags handled by templates in this file are only found inside entry tags. Anything outside entry should be dealt with differently. -->
    
    
    <!-- General elements that need nothing special, but templates need to be applied inside them. -->
    <xsl:template match="owner|status|pre-title|post-title|surname|forename|address|parish|street|bldg|sett|hund|cty|rider|gen|owners|horses|equ|money"><xsl:apply-templates/></xsl:template>
    
    
    
    <!-- Templates for specific tags -->
    
    
    <xsl:template match="under">(<xsl:apply-templates/>)<xsl:text> </xsl:text></xsl:template>
   
    <xsl:template match="pounds"> £<xsl:apply-templates/> - </xsl:template>
    
    <xsl:template match="shillings"><xsl:apply-templates/> -  </xsl:template>
    
    <xsl:template match="pence"><xsl:apply-templates/></xsl:template>
    
    <xsl:template match="gap">[...]</xsl:template>
    
    <xsl:template match="add">[^<xsl:apply-templates/>^]</xsl:template>
    
    <xsl:template match="del">[del: <xsl:apply-templates/>]</xsl:template>
    
</xsl:stylesheet>