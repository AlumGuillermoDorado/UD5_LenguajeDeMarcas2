<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Duracion de menos de 2 minutos 30 segundos</h1>
        <table border="2">
        <tr>
            <th>TituloDelAlbum</th>
            <th>Artista</th>
            <th>SelloDiscografico</th>
            <th>AnnoPublicacion</th>
            <th>TituloCancion</th>
            <th>Duracion</th>
        </tr>
        <xsl:for-each select="Discografica/CD">
        <!-- Definir Variables -->
        <xsl:variable name="TituloDelAlbum"><xsl:value-of select="TituloDelAlbum"/></xsl:variable>
        <xsl:variable name="Artista"><xsl:value-of select="Artista"/></xsl:variable>
        <xsl:variable name="SelloDiscografico"><xsl:value-of select="SelloDiscografico"/></xsl:variable>
        <xsl:variable name="annoPublicacion"><xsl:value-of select="annoPublicacion"/></xsl:variable>
        <xsl:for-each select="TituloCancion">
        <xsl:if test="@duracion &lt; 150">
        <tr>
            <!-- Uso de Variables -->
            <td><xsl:value-of select="$TituloDelAlbum"/></td>
            <td><xsl:value-of select="$Artista"/></td>
            <td><xsl:value-of select="$SelloDiscografico"/></td>
            <td><xsl:value-of select="$annoPublicacion"/></td>
            <td><xsl:value-of select="."/><br/></td>
            <!-- Acceso de los atributos -->
            <td><xsl:value-of select="@duracion"/></td>
        </tr>
        </xsl:if>
        </xsl:for-each>
        </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>