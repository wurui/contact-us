<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.contact-us">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-contact-us" ox-mod="contact-us">
            <xsl:variable name="company" select="data/the-company"/>
            <xsl:for-each select="$company/contacts/i">
            	<div class="item">            		
                    <span class="skin-color icon icon-{normalize-space(type)}"></span>
                    <label>
                        <xsl:value-of select="name"/>
                    </label>
                    <p class="no">
                		<xsl:choose>
                			<xsl:when test="type = 'email'">
                				<a href="mailto:{normalize-space(data)}">
                					<xsl:value-of select="no"/>
                				</a>
                			</xsl:when>
                			<xsl:when test="type = 'tel'">
                				<a href="tel:{normalize-space(no)}">
                					<xsl:value-of select="no"/>
                				</a>
                			</xsl:when>
                			<xsl:otherwise><xsl:value-of select="no"/></xsl:otherwise>
                		</xsl:choose>
                    </p>
            		
            	</div>
            </xsl:for-each>
        </div>
    </xsl:template>
</xsl:stylesheet>
