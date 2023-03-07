<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    version="2.0">
    
    
    <!-- 1. INSTRUCTION D'OUTPUT : HTML -->
    <xsl:output method="html" indent="yes"/>
    
    
    <!-- 2. DÉBUT DES DÉCLARATIONS DES VARIABLES -->
    <!-- CHEMINS DES FICHIERS DE SORTIE -->
    
    <xsl:variable name="home">
        <xsl:value-of select="concat('correspondance_de_voltaire_home','.html')"/>
        <!-- variable pour le contenu du home  -->
    </xsl:variable>
    <xsl:variable name="avertissement">
        <xsl:value-of select="concat('correspondance_de_voltaire_avertissement','.html')"/>
        <!-- variable pour le contenu de l'avertissement / prologue -->
    </xsl:variable>
    <xsl:variable name="lettrepremiere">
        <xsl:value-of select="concat('correspondance_de_voltaire_lettrepremiere','.html')"/>
        <!-- variable pour le contenu de la première lettre -->
    </xsl:variable>
    <xsl:variable name="lettreII">
        <xsl:value-of select="concat('correspondance_de_voltaire_lettreII','.html')"/>
        <!-- variable pour le contenu de la deuxième lettre -->
    </xsl:variable>
    <xsl:variable name="lettreIII">
        <xsl:value-of select="concat('correspondance_de_voltaire_lettreIII','.html')"/>
        <!-- variable pour le contenu de la troisième lettre -->
    </xsl:variable>
    <xsl:variable name="lettreIV">
        <xsl:value-of select="concat('correspondance_de_voltaire_lettreIV','.html')"/>
        <!-- variable pour le contenu de la quatrième lettre -->
    </xsl:variable>
    <xsl:variable name="lettreV">
        <xsl:value-of select="concat('correspondance_de_voltaire_lettreV','.html')"/>
        <!-- variable pour le contenu de la cinquième lettre -->
    </xsl:variable>
    <xsl:variable name="lettreVI">
        <xsl:value-of select="concat('correspondance_de_voltaire_lettreVI','.html')"/>
        <!-- variable pour le contenu de la sixième lettre -->
    </xsl:variable>
    
    <!-- VARIABLE AVEC LE <HEAD> -->
    <xsl:variable name="header">
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <title><xsl:value-of select="//titleStmt/title"/></title>
            <meta name="description">
                <xsl:attribute name="content">
                    <xsl:value-of select="//titleStmt/title"/><xsl:text> par </xsl:text><xsl:value-of select="//titleStmt/author"/>
                </xsl:attribute>
            </meta>
            <meta name="author">
                <xsl:attribute name="content">
                    <xsl:value-of select="//titleStmt/author"/>
                </xsl:attribute>
            </meta>
            <link rel="stylesheet" type="text/css" href="VOLTAIRE.css"/>
            <link rel="icon" type="image" href="voltaire.webp"/>
        </head>
    </xsl:variable>
    
    <!-- VARIABLE AVEC LE <FOOTER> -->
    <xsl:variable name="footer">
        <footer>
            Édition
            <p><i><xsl:value-of select="//publicationStmt"/>.</i></p>
        </footer>
    </xsl:variable>
    
    <!-- VARIABLE AVEC LE CSS DU <BODY> -->
    <xsl:variable name="body_css">
        <xsl:text>margin-right: 20%; margin-left: 20%; margin-top: 6%;</xsl:text>
    </xsl:variable>
    
    <!-- VARIABLES AVEC LES LIENS DE RETOUR -->
    <xsl:variable name="return_correspondance_de_voltaire_home">
        <i><a href="{concat('./', $home)}">Revenir à l'accueil</a></i>
    </xsl:variable>
    
    <xsl:variable name="return_correspondance_de_voltaire_avertissement">
        <i><a href="{concat('./', $avertissement)}">Avertissement et prologue de l'imprimé</a></i>
    </xsl:variable>
    
    <xsl:variable name="return_correspondance_de_voltaire_lettrepremiere">
        <i><a href="{concat('./', $lettrepremiere)}">Première lettre</a></i>
    </xsl:variable>
    
    <xsl:variable name="return_correspondance_de_voltaire_lettreII">
        <i><a href="{concat('./', $lettreII)}">Lettre II</a></i>
    </xsl:variable>
    
    <xsl:variable name="return_correspondance_de_voltaire_lettreIII">
        <i><a href="{concat('./', $lettreIII)}">Lettre III</a></i>
    </xsl:variable>
    
    <xsl:variable name="return_correspondance_de_voltaire_lettreIV">
        <i><a href="{concat('./', $lettreIV)}">Lettre IV</a></i>
    </xsl:variable>
    
    <xsl:variable name="return_correspondance_de_voltaire_lettreV">
        <i><a href="{concat('./', $lettreV)}">Lettre V</a></i>
    </xsl:variable>
    
    <xsl:variable name="return_correspondance_de_voltaire_lettreVI">
        <i><a href="{concat('./', $lettreVI)}">Lettre VI</a></i>
    </xsl:variable>
    
    
    
    <!-- VARIABLE AVEC L'EN-TÊTE DU <BODY> DES PAGES -->
    <xsl:variable name="body_header">
        <div style="text-align: center; margin-bottom: 8%;">
            <h1>Édition en ligne des <i><xsl:value-of select="//titleStmt/title"/></i></h1>
            <h2>La correspondance de Voltaire, <i><xsl:value-of select="//titleStmt/title"/></i></h2>
            <p><xsl:value-of select="//titleStmt/author"/></p>
            
            <a href="https://www.maisondelagravure.com/10202-large_default/1878-portrait-de-voltaire.jpg">
                <img src="1878-portrait-de-voltaire (1).webp" alt="gravure, portrait de Voltaire, 1878"/>
            </a>
            
        </div>
    </xsl:variable>
    
    <!-- FIN DES DÉCLARATIONS DES VARIABLES -->
    
    
    
    <!-- TEMPLATE MATCH SUR LA RACINE AVEC LES CALL TEMPLATES DES PAGES-->
    <xsl:template match="/">
        <xsl:call-template name="home"/>
        
        <xsl:call-template name="avertissement"/>
        
        <xsl:call-template name="lettrepremiere"/>
        
        <xsl:call-template name="lettreII"/>
        
        <xsl:call-template name="lettreIII"/>
        
        <xsl:call-template name="lettreIV"/>
        
        <xsl:call-template name="lettreV"/>
        
        <xsl:call-template name="lettreVI"/>
        
    </xsl:template>
    
 
    
    <!-- TEMPLATE DE LA PAGE HOME -->
    <xsl:template name="home">
        <xsl:result-document href="{$home}" method="html">
            <html lang="fr">
                <xsl:copy-of select="$header"/>
                <body>
                    <xsl:attribute name="style">
                        <xsl:value-of select="$body_css"/>
                    </xsl:attribute>
                    <xsl:copy-of select="$body_header"/>
                    <div style="text-align: justify;">  
                        <p><b>Résumé : </b><xsl:value-of select="//abstract/p"/></p>
                    </div>
                    <div>
                        <p><a href="./{$lettrepremiere}">Lettre première</a> – <a href="./{$lettreII}">Lettre II</a> – <a href="./{$lettreIII}">Lettre III</a>
                        – <a href="./{$lettreIV}">Lettre IV</a> – <a href="./{$lettreV}">Lettre V</a> – <a href="./{$lettreVI}">Lettre VI</a></p>
                    </div>
                    <xsl:copy-of select="$footer"/>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    
    <!-- TEMPLATES DE LA LETTRE PREMIERE -->
    <xsl:template name="lettrepremiere">
        <xsl:result-document href="{$lettrepremiere}" method="html">
            <html lang="fr">
                <xsl:copy-of select="$header"/>
                <body>
                    <xsl:attribute name="style">
                        <xsl:value-of select="$body_css"/>
                    </xsl:attribute>
                    <xsl:copy-of select="$body_header"/>
                    <div>
                        <h3 style="text-align: center; padding-bottom: 2%;">Lettre première de Mr. de Voltaire</h3>
                        <div style="text-align: justify;">
                            <xsl:for-each select="//div[@n='1']/p">
                                <!-- boucle afin de reproduire chaque <p> séparément -->
                                <p><xsl:value-of select="."/></p>
                            </xsl:for-each>
                        <p>>> <a href="./{$lettreII}">Lettre suivante.</a></p>
                    </div>
                    <!-- <xsl:copy-of select="$footer"/> -->
                    </div>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    
 
    <!-- TEMPLATES DE LA LETTRE II -->
    <xsl:template name="lettreII">
        <xsl:result-document href="{$lettreII}" method="html">
            <html lang="fr">
                <xsl:copy-of select="$header"/>
                <body>
                    <xsl:attribute name="style">
                        <xsl:value-of select="$body_css"/>
                    </xsl:attribute>
                    <xsl:copy-of select="$body_header"/>
                    <div style="text-align: justify;">
                        <h3 style="text-align: center; padding-bottom: 2%;">Lettre II de Mr. de Voltaire</h3>
                        <!-- ajout d'un @mode pour différencier le traitement du texte -->
                        <!-- texte de la lettre II de celui de la lettre première -->
                        
                        <xsl:for-each select="//div[@n='2']/p">
                            <!-- boucle afin de reproduire chaque <p> séparément -->
                            <p><xsl:value-of select='.'/></p>
                        </xsl:for-each>
                        <p>>> <a href="./{$lettrepremiere}">Lettre précédente.</a></p>
                       <!-- <xsl:copy-of select="$home"/> - <xsl:copy-of select="$avertissement"/> -->
                    </div>
                    <!-- <xsl:copy-of select="$footer"/> -->
                    <p>>> <a href="./{$lettreIII}">Lettre suivante : Lettre III de Mr. de Voltaire</a></p>
                    <!-- <xsl:copy-of select="$lettreIII"/> – <xsl:copy-of select="$lettreIII"/> -->
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    
    <!-- TEMPLATES DE LA LETTRE III -->
    <xsl:template name="lettreIII">
        <xsl:result-document href="{$lettreIII}" method="html">
            <html lang="fr">
                <xsl:copy-of select="$header"/>
                <body>
                    <xsl:attribute name="style">
                        <xsl:value-of select="$body_css"/>
                    </xsl:attribute>
                    <xsl:copy-of select="$body_header"/>
                    <div>
                        <h3 style="text-align: center; padding-bottom: 2%;">Lettre III de Mr. de Voltaire</h3>
                        <xsl:for-each select="//div[@n='3']/p">
                            <!-- boucle afin de reproduire chaque <p> séparément -->
                            <p><xsl:value-of select='.'/></p>
                        </xsl:for-each>
                    </div>
                    <p>>> <a href="./{$lettreIV}">Lettre suivante : Lettre IV de Mr. de Voltaire</a></p>
                   
                   <!--  <xsl:copy-of select="$footer"/> -->
                </body>
            </html>
        </xsl:result-document>
    </xsl:template> 
    
    <!-- TEMPLATES DE LA LETTRE IV -->
    <xsl:template name="lettreIV">
        <xsl:result-document href="{$lettreIV}" method="html">
            <html lang="fr">
                <xsl:copy-of select="$header"/>
                <body>
                    <xsl:attribute name="style">
                        <xsl:value-of select="$body_css"/>
                    </xsl:attribute>
                    <xsl:copy-of select="$body_header"/>
                    <div>
                        <h3 style="text-align: center; padding-bottom: 2%;">Lettre IV de Mr. de Voltaire</h3>
                        <xsl:for-each select="//div[@n='4']/p">
                            <!-- boucle afin de reproduire chaque <p> séparément -->
                            <p><xsl:value-of select='.'/></p>
                        </xsl:for-each>
                    </div>
                    <p>>> <a href="./{$lettreV}">Lettre suivante : Lettre V de Mr. de Voltaire</a></p>
                    <!-- <xsl:copy-of select="$lettreV"/> – <xsl:copy-of select="$lettreV"/>
                    <xsl:copy-of select="$footer"/> -->
                </body>
            </html>
        </xsl:result-document>
    </xsl:template> 
    
    
    <!-- TEMPLATES DE LA LETTRE V -->
    <xsl:template name="lettreV">
        <xsl:result-document href="{$lettreV}" method="html">
            <html lang="fr">
                <xsl:copy-of select="$header"/>
                <body>
                    <xsl:attribute name="style">
                        <xsl:value-of select="$body_css"/>
                    </xsl:attribute>
                    <xsl:copy-of select="$body_header"/>
                    <div>
                        <h3 style="text-align: center; padding-bottom: 2%;">Lettre V de Mr. de Voltaire</h3>
                        <xsl:for-each select="//div[@n='5']/p">
                            <!-- boucle afin de reproduire chaque <p> séparément -->
                            <p><xsl:value-of select='.'/></p>
                        </xsl:for-each>
                    </div>
                    <p>>> <a href="./{$lettreVI}">Lettre suivante : Lettre VI de Mr. de Voltaire</a></p>
                   <!-- <xsl:copy-of select="$lettreVI"/> – <xsl:copy-of select="$lettreVI"/>
                    <xsl:copy-of select="$footer"/> -->
                </body>
            </html>
        </xsl:result-document>
    </xsl:template> 
    
    <!-- TEMPLATES DE LA LETTRE VI -->
    <xsl:template name="lettreVI">
        <xsl:result-document href="{$lettreVI}" method="html">
            <html lang="fr">
                <xsl:copy-of select="$header"/>
                <body>
                    <xsl:attribute name="style">
                        <xsl:value-of select="$body_css"/>
                    </xsl:attribute>
                    <xsl:copy-of select="$body_header"/>
                    <div>
                        <h3 style="text-align: center; padding-bottom: 2%;">Lettre VI de Mr. de Voltaire</h3>
                        <xsl:for-each select="//div[@n='6']/p">
                            <!-- boucle afin de reproduire chaque <p> séparément -->
                            <p><xsl:value-of select='.'/></p>
                        </xsl:for-each>
                    </div>
                    <!-- <xsl:copy-of select="$footer"/> -->
                </body>
            </html>
        </xsl:result-document>
    </xsl:template> 
    
    <!-- TEMPLATES DE LA PAGE D'AVERTISSEMENT -->
    <xsl:template name="avertissement">
        <xsl:result-document href="{$avertissement}">
            <html lang="fr">
                <xsl:copy-of select="$header"/>
                <body>
                    <xsl:attribute name="style">
                        <xsl:value-of select="$body_css"/>
                    </xsl:attribute>
                    <xsl:copy-of select="$body_header"/>
                    <div>
                        <!-- BOUCLE N°1 : créer une <div> pour les individus et une autre pour les lieux -->
                        <xsl:for-each-group select="//body//hi" group-by="./@rend">
                            <div>
                                <xsl:choose>
                                    <xsl:when test="./@rend='b'">
                                        <h3>Index des noms de personnes</h3>
                                    </xsl:when>
                                    <xsl:when test="./@rend='i'">
                                        <h3>Index des noms de lieux</h3>
                                      
                                    </xsl:when>
                                </xsl:choose>
                                <!-- BOUCLE N°2 : créer un seul <p> par entrée d'index -->
                                <xsl:for-each-group select="current-group()" group-by=".">
                                    <p><i><xsl:value-of select="."/></i> :
                                        <!-- BOUCLE N°3 : ajouter le n° de la ou des <div> où apparaissent les entrées d'index -->
                                        <xsl:for-each-group select="current-group()" group-by="ancestor::div">
                                            <a>
                                                <xsl:attribute name="href">
                                                    <xsl:choose>
                                                        <xsl:when test="ancestor::div/@n = '1'">
                                                            <xsl:text>./</xsl:text><xsl:value-of select="$lettrepremiere"/>
                                                        </xsl:when>
                                                        <xsl:when test="ancestor::div/@n = '2'">
                                                            <xsl:text>./</xsl:text><xsl:value-of select="$lettreII"/>
                                                        </xsl:when>
                                                    </xsl:choose>
                                                </xsl:attribute>
                                                <xsl:value-of select="ancestor::div/@n"/>
                                            </a>
                                            <xsl:if test="position()!= last()">, 
                                            </xsl:if><xsl:if test="position() = last()">.</xsl:if>
                                        </xsl:for-each-group>
                                    </p>
                                </xsl:for-each-group>
                            </div>
                        </xsl:for-each-group>
                        <p><xsl:copy-of select="$home"/> – <a href="./{$lettrepremiere}">Lettre première</a> – <a href="./{$lettreII}">Lettre II</a></p>
                    </div>
                    <xsl:copy-of select="$footer"/>
                   
                 
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    
</xsl:stylesheet>