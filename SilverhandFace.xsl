<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="marmichef">
    
    <html>
        <head>
            <link href="style.css" rel="stylesheet"/>
            <title>Recette du Johnny Silverhand</title>
        </head>

        <body class="background">
            <div class="innerbody">
                <div class="titre">
                    <h1> <xsl:value-of select="titre" /> </h1>
                </div>
                
               
                <div class="ratings">
                    <span class="right">Cout : <img src="img/coin-{titre/@cout}.png"/></span>
                    <span class="left">Difficulté : <img src="img/toque-{titre/@difficulte}.png"/></span>
                </div>

    <!-- J'avais un doute sur l'exercice recherché avec les appels d'image. Je me suis permis de mettre les deux façons en xsl et en html, le resultat est le même -->
                <div class="preview">
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="image"/><span>preview.png</span>
                        </xsl:attribute>
                    </img>
                </div>


                <div class="ingredients">
                    <h2> Ingrédients </h2><hr/>
                    <xsl:for-each select="ingredients/ingredient">
                        <h3><li> 
                            <xsl:value-of select="qte"/>
                            <xsl:value-of select="unite"/>
                            <xsl:value-of select="libelle"/>
                        </li></h3>
                    </xsl:for-each>
                </div>

                <div class="etapes">
                    <h2> Etapes </h2><hr/>
                    <xsl:for-each select="etapes/etape">
                    <h3><xsl:value-of select="."/><br/></h3>
                    </xsl:for-each>
                </div>

                <div class="commentaires">
                    <h2> Commentaires </h2><hr/>
                    <xsl:for-each select="commentaires/commentaire">
                        <span class="commenteur"><xsl:value-of select="nom" /></span>
                        <span class="starrating"><img src="img/star-{note}.png"/></span><br/>
                        <div class="talkbox">
                            <xsl:value-of select="libelle" />
                        </div>
                    </xsl:for-each>
                </div>
            </div>
        </body>
    </html>

</xsl:template>
</xsl:stylesheet>


 