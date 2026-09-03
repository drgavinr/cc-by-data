<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    
    <!-- Extract each entry in Propositions horse accounts to one row in a CSV file. Although this has the extension .csv the separators are actually Tabs. -->
    
    <!-- Set up output formats. -->
    <xsl:output method="text" name="text"/>
    
    <!-- Include shared templates -->
    <xsl:include href="propositions-include.xsl"/>

    
    <!-- Main template -->
    <xsl:template match="/">
        <xsl:result-document href="entries.csv" format="text">
        <xsl:text>Ref&#x09;Part&#x09;Folio&#x09;ID&#x09;Date&#x09;Text&#x09;Value&#x09;Horses&#x09;Riders&#x09;Equipment</xsl:text>
            <xsl:for-each select="//entry">
                <xsl:text>
</xsl:text><xsl:value-of select="ancestor::account/@ref"/>, f. <xsl:value-of select="@f"/><xsl:text>&#x09;</xsl:text><xsl:value-of select="ancestor::account/@n"/><xsl:text>&#x09;</xsl:text><xsl:value-of select="@f"/><xsl:text>&#x09;</xsl:text><xsl:value-of select="@id"/><xsl:text>&#x09;</xsl:text><xsl:value-of select="@when"/><xsl:text>&#x09;</xsl:text><xsl:apply-templates/><xsl:text>&#x09;</xsl:text><xsl:value-of select="money/@dec"/><xsl:text>&#x09;</xsl:text><xsl:value-of select="horses/@num"/><xsl:text>&#x09;</xsl:text><xsl:value-of select="count(descendant::rider)"/><xsl:text>&#x09;</xsl:text><xsl:for-each select="descendant::equ"><xsl:apply-templates/></xsl:for-each>
            </xsl:for-each>
        </xsl:result-document>
    </xsl:template>
    
</xsl:stylesheet>