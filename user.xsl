<?xml version="1.0" encoding="UTF-8"?>
<!-- Created with Liquid Studio 2021 (https://www.liquid-technologies.com) -->
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
            </head>
            <body>
                <h1 style="text-align:center">Offer Details</h1>

                <table border="2" align="center">
                    <tr bgcolor="violet" >

                        <th>no</th>
                        <th>plan</th>
                        <th>validity</th>
                        <th>subscription</th>
                        <th>description</th>

                    </tr>

                    <xsl:for-each select="User/offers/offer">
                        <tr>
                            <td>
                                <xsl:value-of select="no"/>
                            </td>
                            <td>
                                <xsl:value-of select="plan"/>
                            </td>
                            <td>
                                <xsl:value-of select="validity"/>
                            </td>
                            <td>
                                <xsl:value-of select="subscription"/>
                            </td>
                            <td>
                                <xsl:value-of select="description"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                   

                </table>


                <br>
                    <br>
                    </br>
                </br>

                <h1 style="text-align:center">Complete Offer Details</h1>
                <xsl:apply-templates/>
            </body>
        </html>

    </xsl:template>

    <xsl:template match="cd">
        <p>
            <xsl:apply-templates select="no"/>
            <xsl:apply-templates select="plan"/>
            <xsl:apply-templates select="validity"/>
            <xsl:apply-templates select="subscription"/>
            <xsl:apply-templates select="description"/>
        </p>
    </xsl:template>

    <xsl:template match="no">
        No: <span style="color:#ff0000">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>


    <xsl:template match="plan">
        Plan: <span style="color:#00ff00">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>
    <xsl:template match="validity">
        Validity: <span style="color:#ff0000">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

    <xsl:template match="subscription">
        Subscription: <span style="color:#00ff00">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

    <xsl:template match="description">
        Description: <span style="color:#ff0000">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

</xsl:stylesheet>

    


