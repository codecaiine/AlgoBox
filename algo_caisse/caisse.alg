<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;VOTRE RECETTE EST DE : &quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2lignes="" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" maxBoucle="500000" totalBoucles="5000000" nbDecimales="8" epaisseurLigne="2" epaisseurPoint="2" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#client" algoitem="client EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#total_recettes" algoitem="total_recettes EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Montant_paye" algoitem="Montant_paye EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#reste" algoitem="reste EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#prix_article" algoitem="prix_article EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#facture_total" algoitem="facture_total EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#qt_10mille" algoitem="qt_10mille EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#qt_5mille" algoitem="qt_5mille EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#qt_2mille" algoitem="qt_2mille EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#qt_1mille" algoitem="qt_1mille EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#qt_500" algoitem="qt_500 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#qt_200" algoitem="qt_200 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#qt_100" algoitem="qt_100 EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#***************************#1" algoitem="AFFICHER &quot;***************************&quot;"/>
        <item code="4# BONJOUR CHER(E) CAISSIER(E)#1" algoitem="AFFICHER &quot; BONJOUR CHER(E) CAISSIER(E)&quot;"/>
        <item code="4#***************************#1" algoitem="AFFICHER &quot;***************************&quot;"/>
        <item code="5#total_recettes#0#pasliste" algoitem="total_recettes PREND_LA_VALEUR 0"/>
        <item code="12#client#1#3" algoitem="POUR client ALLANT_DE 1 A 3">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#Entrez la facture du client numero #0" algoitem="AFFICHER &quot;Entrez la facture du client numero &quot;"/>
            <item code="3#client#1#pasliste" algoitem="AFFICHER client"/>
            <item code="6#client > 1 OU client &lt; 3" algoitem="SI (client > 1 OU client &lt; 3) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#facture_total#0#pasliste" algoitem="facture_total PREND_LA_VALEUR 0"/>
                <item code="5#prix_article#1#pasliste" algoitem="prix_article PREND_LA_VALEUR 1"/>
                <item code="15#prix_article != 0" algoitem="TANT_QUE (prix_article != 0) FAIRE">
                    <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                    <item code="4#Entrez le prix de l ' article :#0" algoitem="AFFICHER &quot;Entrez le prix de l ' article :&quot;"/>
                    <item code="2#prix_article#pasliste" algoitem="LIRE prix_article"/>
                    <item code="5#facture_total#facture_total+prix_article#pasliste" algoitem="facture_total PREND_LA_VALEUR facture_total+prix_article"/>
                    <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
                </item>
                <item code="5#total_recettes#total_recettes+facture_total#pasliste" algoitem="total_recettes PREND_LA_VALEUR total_recettes+facture_total"/>
                <item code="4#Votre facture est de :  #0" algoitem="AFFICHER &quot;Votre facture est de :  &quot;"/>
                <item code="3#facture_total#0#pasliste" algoitem="AFFICHER facture_total"/>
                <item code="4# FCFA #1" algoitem="AFFICHER &quot; FCFA &quot;"/>
                <item code="4#Entrez le montant recu du client  #0" algoitem="AFFICHER &quot;Entrez le montant recu du client  &quot;"/>
                <item code="2#Montant_paye#pasliste" algoitem="LIRE Montant_paye"/>
                <item code="5#reste#Montant_paye-facture_total#pasliste" algoitem="reste PREND_LA_VALEUR Montant_paye-facture_total"/>
                <item code="4#Votre monnaie est de :  #0" algoitem="AFFICHER &quot;Votre monnaie est de :  &quot;"/>
                <item code="3#reste#0#pasliste" algoitem="AFFICHER reste"/>
                <item code="4# FCFA #1" algoitem="AFFICHER &quot; FCFA &quot;"/>
                <item code="4#Votre monnaie se compose de : #1" algoitem="AFFICHER &quot;Votre monnaie se compose de : &quot;"/>
                <item code="5#qt_10mille#0#pasliste" algoitem="qt_10mille PREND_LA_VALEUR 0"/>
                <item code="15#reste >= 10000" algoitem="TANT_QUE (reste >= 10000) FAIRE">
                    <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                    <item code="5#qt_10mille#qt_10mille+1#pasliste" algoitem="qt_10mille PREND_LA_VALEUR qt_10mille+1"/>
                    <item code="5#reste#reste-10000#pasliste" algoitem="reste PREND_LA_VALEUR reste-10000"/>
                    <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
                </item>
                <item code="5#qt_5mille#0#pasliste" algoitem="qt_5mille PREND_LA_VALEUR 0"/>
                <item code="6#reste >= 5000" algoitem="SI (reste >= 5000) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#qt_5mille#qt_5mille+1#pasliste" algoitem="qt_5mille PREND_LA_VALEUR qt_5mille+1"/>
                    <item code="5#reste#reste-5000#pasliste" algoitem="reste PREND_LA_VALEUR reste-5000"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="5#qt_2mille#0#pasliste" algoitem="qt_2mille PREND_LA_VALEUR 0"/>
                <item code="15#reste >= 2000" algoitem="TANT_QUE (reste >= 2000) FAIRE">
                    <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                    <item code="5#qt_2mille#qt_2mille+1#pasliste" algoitem="qt_2mille PREND_LA_VALEUR qt_2mille+1"/>
                    <item code="5#reste#reste-2000#pasliste" algoitem="reste PREND_LA_VALEUR reste-2000"/>
                    <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
                </item>
                <item code="5#qt_1mille#0#pasliste" algoitem="qt_1mille PREND_LA_VALEUR 0"/>
                <item code="6#reste >= 1000" algoitem="SI (reste >= 1000) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#qt_1mille#qt_1mille+1#pasliste" algoitem="qt_1mille PREND_LA_VALEUR qt_1mille+1"/>
                    <item code="5#reste#reste-1000#pasliste" algoitem="reste PREND_LA_VALEUR reste-1000"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="5#qt_500#0#pasliste" algoitem="qt_500 PREND_LA_VALEUR 0"/>
                <item code="6#reste >= 500" algoitem="SI (reste >= 500) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#qt_500#qt_500+1#pasliste" algoitem="qt_500 PREND_LA_VALEUR qt_500+1"/>
                    <item code="5#reste#reste-500#pasliste" algoitem="reste PREND_LA_VALEUR reste-500"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="5#qt_200#0#pasliste" algoitem="qt_200 PREND_LA_VALEUR 0"/>
                <item code="15#reste >= 200" algoitem="TANT_QUE (reste >= 200) FAIRE">
                    <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                    <item code="5#qt_200#qt_200+1#pasliste" algoitem="qt_200 PREND_LA_VALEUR qt_200+1"/>
                    <item code="5#reste#reste-200#pasliste" algoitem="reste PREND_LA_VALEUR reste-200"/>
                    <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
                </item>
                <item code="5#qt_100#0#pasliste" algoitem="qt_100 PREND_LA_VALEUR 0"/>
                <item code="15#reste >= 100" algoitem="TANT_QUE (reste >= 100) FAIRE">
                    <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                    <item code="5#qt_100#qt_100+1#pasliste" algoitem="qt_100 PREND_LA_VALEUR qt_100+1"/>
                    <item code="5#reste#reste-100#pasliste" algoitem="reste PREND_LA_VALEUR reste-100"/>
                    <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
                </item>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="3#qt_10mille#0#pasliste" algoitem="AFFICHER qt_10mille"/>
            <item code="4#  billet(s) de 10000 FCFA#1" algoitem="AFFICHER &quot;  billet(s) de 10000 FCFA&quot;"/>
            <item code="3#qt_5mille#0#pasliste" algoitem="AFFICHER qt_5mille"/>
            <item code="4#  billet(s)  de 5000 FCFA#1" algoitem="AFFICHER &quot;  billet(s)  de 5000 FCFA&quot;"/>
            <item code="3#qt_2mille#0#pasliste" algoitem="AFFICHER qt_2mille"/>
            <item code="4#  billet(s)  de 2000 FCFA#1" algoitem="AFFICHER &quot;  billet(s)  de 2000 FCFA&quot;"/>
            <item code="3#qt_1mille#0#pasliste" algoitem="AFFICHER qt_1mille"/>
            <item code="4# billet(s)  de 1000 FCFA#1" algoitem="AFFICHER &quot; billet(s)  de 1000 FCFA&quot;"/>
            <item code="3#qt_500#0#pasliste" algoitem="AFFICHER qt_500"/>
            <item code="4# billet(s) de 500 FCFA#1" algoitem="AFFICHER &quot; billet(s) de 500 FCFA&quot;"/>
            <item code="3#qt_200#0#pasliste" algoitem="AFFICHER qt_200"/>
            <item code="4# piece(s) de 200 FCFA#1" algoitem="AFFICHER &quot; piece(s) de 200 FCFA&quot;"/>
            <item code="3#qt_100#0#pasliste" algoitem="AFFICHER qt_100"/>
            <item code="4# piece(s) de 100 FCFA#1" algoitem="AFFICHER &quot; piece(s) de 100 FCFA&quot;"/>
            <item code="4#Environ #0" algoitem="AFFICHER &quot;Environ &quot;"/>
            <item code="3#reste#0#pasliste" algoitem="AFFICHER reste"/>
            <item code="4# FCFA en pièce(s)#1" algoitem="AFFICHER &quot; FCFA en pièce(s)&quot;"/>
            <item code="4#******************#1" algoitem="AFFICHER &quot;******************&quot;"/>
            <item code="4#Operation suivante #1" algoitem="AFFICHER &quot;Operation suivante &quot;"/>
            <item code="4#******************#1" algoitem="AFFICHER &quot;******************&quot;"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Vous avez depasse les 3 clients#1" algoitem="AFFICHER &quot;Vous avez depasse les 3 clients&quot;"/>
        <item code="4#VOTRE RECETTE EST DE : #0" algoitem="AFFICHER &quot;VOTRE RECETTE EST DE : &quot;"/>
        <item code="3#total_recettes#1#pasliste" algoitem="AFFICHER total_recettes"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
