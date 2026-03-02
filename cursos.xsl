<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : peliculas.xsl
    Created on : February 26, 2026, 6:41 PM
    Author     : irais
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
    <html>
        <head>
            <title>Peliculas</title>

            <style>
                table {
                    border-collapse: collapse;
                    width: 80%;
                    margin: auto;
                }
                th, td {
                    border: 1px solid black;
                    padding: 8px;
                    text-align: center;
                }
                th {
                    background-color: #e0e0e0;
                }
            </style>
        </head>

        <body>

            <h2 style="text-align:center;">Catálogo de Cursos de sistemas</h2>
                
                <ol>
                    <xsl:for-each select="cursos/curso">
                        <li>
                            <fieldset>
                                <legend>Nombre: <xsl:value-of select="nombre"/></legend>
                                
                                <p>Horario: <xsl:value-of select="horario"/></p>
                                <p>Precio: <xsl:value-of select="precio"/></p>
                                <p>Salon: <xsl:value-of select="salon"/></p>
                            </fieldset>
                        </li>
                    </xsl:for-each>
                </ol>
        </body>
    </html>
    </xsl:template>

</xsl:stylesheet>