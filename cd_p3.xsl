<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"> 
    <html> 
    <body> 
    <h1>Almacén de discos</h1> 
        <table> 
            <th>TituloDelAlbum</th> 
            <th>Artista</th> 
            <th>TituloCancion</th>
            <th>SelloDiscografico</th>
            <th>annoPublicacion</th>
    <xsl:for-each select="Discografica/CD[SelloDiscografico='Sony']">
    <tr>
        <td><xsl:value-of select="TituloDelAlbum"/></td>
        <td><xsl:value-of select="Artista"/></td>
        <td><xsl:for-each select="TituloCancion">
        <xsl:value-of select="."/>
        <br/>
        </xsl:for-each></td>
        <td><xsl:value-of select="SelloDiscografico"/></td>
        <td><xsl:value-of select="annoPublicacion"/></td>
    </tr>
    </xsl:for-each> 
    </table> 
    </body> 
    </html>
</xsl:template>
</xsl:stylesheet> 