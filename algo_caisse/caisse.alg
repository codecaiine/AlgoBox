<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot; FCFA&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2defaut="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" nbDecimales="8" totalAffichages="1000" maxBoucle="500000" epaisseurPoint="2" totalBoucles="5000000" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="client EST_DU_TYPE NOMBRE" code="1#NOMBRE#client"/>
        <item algoitem="total_recettes EST_DU_TYPE NOMBRE" code="1#NOMBRE#total_recettes"/>
        <item algoitem="Montant_paye EST_DU_TYPE NOMBRE" code="1#NOMBRE#Montant_paye"/>
        <item algoitem="reste EST_DU_TYPE NOMBRE" code="1#NOMBRE#reste"/>
        <item algoitem="prix_article EST_DU_TYPE NOMBRE" code="1#NOMBRE#prix_article"/>
        <item algoitem="facture_total EST_DU_TYPE NOMBRE" code="1#NOMBRE#facture_total"/>
        <item algoitem="qt_10mille EST_DU_TYPE NOMBRE" code="1#NOMBRE#qt_10mille"/>
        <item algoitem="qt_5mille EST_DU_TYPE NOMBRE" code="1#NOMBRE#qt_5mille"/>
        <item algoitem="qt_2mille EST_DU_TYPE NOMBRE" code="1#NOMBRE#qt_2mille"/>
        <item algoitem="qt_1mille EST_DU_TYPE NOMBRE" code="1#NOMBRE#qt_1mille"/>
        <item algoitem="qt_500 EST_DU_TYPE NOMBRE" code="1#NOMBRE#qt_500"/>
        <item algoitem="qt_200 EST_DU_TYPE NOMBRE" code="1#NOMBRE#qt_200"/>
        <item algoitem="qt_100 EST_DU_TYPE NOMBRE" code="1#NOMBRE#qt_100"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;***************************&quot;" code="4#***************************#1"/>
        <item algoitem="AFFICHER &quot;Bienvenue dans la boutique IIPEA&quot;" code="4#Bienvenue dans la boutique IIPEA#1"/>
        <item algoitem="AFFICHER &quot;***************************&quot;" code="4#***************************#1"/>
        <item algoitem="total_recettes PREND_LA_VALEUR 0" code="5#total_recettes#0#pasliste"/>
        <item algoitem="POUR client ALLANT_DE 1 A 3" code="12#client#1#3">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;Entrez la facture du client numero &quot;" code="4#Entrez la facture du client numero #0"/>
            <item algoitem="AFFICHER client" code="3#client#1#pasliste"/>
            <item algoitem="SI (client > 1 OU client &lt; 3) ALORS" code="6#client > 1 OU client &lt; 3">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="facture_total PREND_LA_VALEUR 0" code="5#facture_total#0#pasliste"/>
                <item algoitem="prix_article PREND_LA_VALEUR 1" code="5#prix_article#1#pasliste"/>
                <item algoitem="TANT_QUE (prix_article != 0) FAIRE" code="15#prix_article != 0">
                    <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                    <item algoitem="AFFICHER &quot;Entrez le prix de l ' article :&quot;" code="4#Entrez le prix de l ' article :#0"/>
                    <item algoitem="LIRE prix_article" code="2#prix_article#pasliste"/>
                    <item algoitem="facture_total PREND_LA_VALEUR facture_total+prix_article" code="5#facture_total#facture_total+prix_article#pasliste"/>
                    <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
                </item>
                <item algoitem="total_recettes PREND_LA_VALEUR total_recettes+facture_total" code="5#total_recettes#total_recettes+facture_total#pasliste"/>
                <item algoitem="AFFICHER &quot;Votre facture est de :  &quot;" code="4#Votre facture est de :  #0"/>
                <item algoitem="AFFICHER facture_total" code="3#facture_total#0#pasliste"/>
                <item algoitem="AFFICHER &quot; FCFA &quot;" code="4# FCFA #1"/>
                <item algoitem="AFFICHER &quot;Entrez le montant recu du client  &quot;" code="4#Entrez le montant recu du client  #0"/>
                <item algoitem="LIRE Montant_paye" code="2#Montant_paye#pasliste"/>
                <item algoitem="reste PREND_LA_VALEUR Montant_paye-facture_total" code="5#reste#Montant_paye-facture_total#pasliste"/>
                <item algoitem="AFFICHER &quot;Votre monnaie est de :  &quot;" code="4#Votre monnaie est de :  #0"/>
                <item algoitem="AFFICHER reste" code="3#reste#0#pasliste"/>
                <item algoitem="AFFICHER &quot; FCFA &quot;" code="4# FCFA #1"/>
                <item algoitem="AFFICHER &quot;Votre monnaie se compose de : &quot;" code="4#Votre monnaie se compose de : #1"/>
                <item algoitem="qt_10mille PREND_LA_VALEUR 0" code="5#qt_10mille#0#pasliste"/>
                <item algoitem="TANT_QUE (reste >= 10000) FAIRE" code="15#reste >= 10000">
                    <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                    <item algoitem="qt_10mille PREND_LA_VALEUR qt_10mille+1" code="5#qt_10mille#qt_10mille+1#pasliste"/>
                    <item algoitem="reste PREND_LA_VALEUR reste-10000" code="5#reste#reste-10000#pasliste"/>
                    <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
                </item>
                <item algoitem="qt_5mille PREND_LA_VALEUR 0" code="5#qt_5mille#0#pasliste"/>
                <item algoitem="SI (reste >= 5000) ALORS" code="6#reste >= 5000">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="qt_5mille PREND_LA_VALEUR qt_5mille+1" code="5#qt_5mille#qt_5mille+1#pasliste"/>
                    <item algoitem="reste PREND_LA_VALEUR reste-5000" code="5#reste#reste-5000#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="qt_2mille PREND_LA_VALEUR 0" code="5#qt_2mille#0#pasliste"/>
                <item algoitem="TANT_QUE (reste >= 2000) FAIRE" code="15#reste >= 2000">
                    <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                    <item algoitem="qt_2mille PREND_LA_VALEUR qt_2mille+1" code="5#qt_2mille#qt_2mille+1#pasliste"/>
                    <item algoitem="reste PREND_LA_VALEUR reste-2000" code="5#reste#reste-2000#pasliste"/>
                    <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
                </item>
                <item algoitem="qt_1mille PREND_LA_VALEUR 0" code="5#qt_1mille#0#pasliste"/>
                <item algoitem="SI (reste >= 1000) ALORS" code="6#reste >= 1000">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="qt_1mille PREND_LA_VALEUR qt_1mille+1" code="5#qt_1mille#qt_1mille+1#pasliste"/>
                    <item algoitem="reste PREND_LA_VALEUR reste-1000" code="5#reste#reste-1000#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="qt_500 PREND_LA_VALEUR 0" code="5#qt_500#0#pasliste"/>
                <item algoitem="SI (reste >= 500) ALORS" code="6#reste >= 500">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="qt_500 PREND_LA_VALEUR qt_500+1" code="5#qt_500#qt_500+1#pasliste"/>
                    <item algoitem="reste PREND_LA_VALEUR reste-500" code="5#reste#reste-500#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="qt_200 PREND_LA_VALEUR 0" code="5#qt_200#0#pasliste"/>
                <item algoitem="TANT_QUE (reste >= 200) FAIRE" code="15#reste >= 200">
                    <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                    <item algoitem="qt_200 PREND_LA_VALEUR qt_200+1" code="5#qt_200#qt_200+1#pasliste"/>
                    <item algoitem="reste PREND_LA_VALEUR reste-200" code="5#reste#reste-200#pasliste"/>
                    <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
                </item>
                <item algoitem="qt_100 PREND_LA_VALEUR 0" code="5#qt_100#0#pasliste"/>
                <item algoitem="TANT_QUE (reste >= 100) FAIRE" code="15#reste >= 100">
                    <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                    <item algoitem="qt_100 PREND_LA_VALEUR qt_100+1" code="5#qt_100#qt_100+1#pasliste"/>
                    <item algoitem="reste PREND_LA_VALEUR reste-100" code="5#reste#reste-100#pasliste"/>
                    <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
                </item>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="AFFICHER qt_10mille" code="3#qt_10mille#0#pasliste"/>
            <item algoitem="AFFICHER &quot;  billet(s) de 10.000 Francs&quot;" code="4#  billet(s) de 10.000 Francs#1"/>
            <item algoitem="AFFICHER qt_5mille" code="3#qt_5mille#0#pasliste"/>
            <item algoitem="AFFICHER &quot;  billet(s)  de 5000 Francs&quot;" code="4#  billet(s)  de 5000 Francs#1"/>
            <item algoitem="AFFICHER qt_2mille" code="3#qt_2mille#0#pasliste"/>
            <item algoitem="AFFICHER &quot;  billet(s)  de 2000 Francs&quot;" code="4#  billet(s)  de 2000 Francs#1"/>
            <item algoitem="AFFICHER qt_1mille" code="3#qt_1mille#0#pasliste"/>
            <item algoitem="AFFICHER &quot; billet(s)  de 1000 Francs&quot;" code="4# billet(s)  de 1000 Francs#1"/>
            <item algoitem="AFFICHER qt_500" code="3#qt_500#0#pasliste"/>
            <item algoitem="AFFICHER &quot; billet(s) de 500 Francs&quot;" code="4# billet(s) de 500 Francs#1"/>
            <item algoitem="AFFICHER qt_200" code="3#qt_200#0#pasliste"/>
            <item algoitem="AFFICHER &quot; piece(s) de 200 Francs&quot;" code="4# piece(s) de 200 Francs#1"/>
            <item algoitem="AFFICHER qt_100" code="3#qt_100#0#pasliste"/>
            <item algoitem="AFFICHER &quot; piece(s) de 100 Francs&quot;" code="4# piece(s) de 100 Francs#1"/>
            <item algoitem="AFFICHER &quot;Et  &quot;" code="4#Et  #0"/>
            <item algoitem="AFFICHER reste" code="3#reste#0#pasliste"/>
            <item algoitem="AFFICHER &quot; Francs en d'autres pièces&quot;" code="4# Francs en d'autres pièces#1"/>
            <item algoitem="AFFICHER &quot;******************&quot;" code="4#******************#1"/>
            <item algoitem="AFFICHER &quot;Operation suivante &quot;" code="4#Operation suivante #1"/>
            <item algoitem="AFFICHER &quot;******************&quot;" code="4#******************#1"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Vous avez depasse les 3 clients&quot;" code="4#Vous avez depasse les 3 clients#1"/>
        <item algoitem="AFFICHER &quot;VOTRE RECETTE EST DE : &quot;" code="4#VOTRE RECETTE EST DE : #0"/>
        <item algoitem="AFFICHER total_recettes" code="3#total_recettes#0#pasliste"/>
        <item algoitem="AFFICHER &quot; FCFA&quot;" code="4# FCFA#1"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
