<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" />

<xsl:template match="/tienda">
        <html>
            <head>
                <title></title>
                <link rel="stylesheet" href="3_tienda.css"/>
            </head>
            <body>
               <section id="principio">
                    <h1><xsl:value-of select="encabezado"/></h1>
                    <h2><xsl:value-of select="descripcion"/></h2>
                </section>
                <section id="productos">
                    <h2>Productos</h2>
                    <div class="contenedorProductos">
                        <xsl:for-each select="/tienda/productos/producto">
                            <div class="producto">
                                <h3><xsl:value-of select="titulo"/></h3>
                                <p><xsl:value-of select="descripcion"/></p>
                                <h4>Precio: <xsl:value-of select="precio"/></h4>
                            </div>
                        </xsl:for-each>
                    </div>
                </section>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>
