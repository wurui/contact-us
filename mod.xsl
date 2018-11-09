<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.contact-us">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-contact-us" ox-mod="contact-us">
            <xsl:for-each select="data/info-contact-us/i">
            	<div class="item">
            		<span class="icon icon-{normalize-space(type)}"></span>
            		
            		<span>
            			<xsl:value-of select="name"/>
            		</span>
            		<br/>
            		<xsl:choose>
            			<xsl:when test="type = 'email'">
            				<a href="mailto:{normalize-space(data)}">
            					<xsl:value-of select="data"/>
            				</a>
            			</xsl:when>
            			<xsl:when test="type = 'tel'">
            				<a href="tel:{normalize-space(data)}">
            					<xsl:value-of select="data"/>
            				</a>
            			</xsl:when>
            			<xsl:otherwise><xsl:value-of select="data"/></xsl:otherwise>
            		</xsl:choose>
            		
            	</div>
            </xsl:for-each>
        </div>
    </xsl:template>
</xsl:stylesheet>
