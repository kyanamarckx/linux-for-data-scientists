#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

DATUM=$(date +'%d/%m/%Y')
TIJD=$(date +'%H:%M')
USER="Kyana Marckx"
FILE="../report.md"

echo "# Rapport  " > ${FILE}
echo "Dit is een rapport over de data van de park and ride zones Bourgoyen, Gentbrugge Arsenaal, Oostakker, The Loop en Wondelgem in Gent.  " >> ${FILE}


echo "## Grafieken  " >> ${FILE}
echo "![grafiek bezetting park and ride zone Bourgoyen](graphs/graphBourgoyen.png)  " >> ${FILE}
echo "![grafiek bezetting park and ride zone Gentbrugge Arsenaal](graphs/graphGentbruggeArsenaal.png)  " >> ${FILE}
echo "![grafiek bezetting park and ride zone Oostakker](graphs/graphOostakker.png)  " >> ${FILE}
echo "![grafiek bezetting park and ride zone The Loop](graphs/graphTheLoop.png)  " >> ${FILE}
echo "![grafiek bezetting park and ride zone Wondelgem](graphs/graphWondelgem.png)  " >> ${FILE}


echo "## Locaties  " >> ${FILE}
echo "### Bourgoyen  " >> ${FILE}
echo "![locatie park and ride zone Bourgoyen](graphs/locationBourgoyen.png)  " >> ${FILE}

echo "### Gentbrugge Arsenaal  " >> ${FILE}
echo "![locatie park and ride zone Gentbrugge Arsenaal](graphs/locationGentbruggeArsenaal.png)  " >> ${FILE}

echo "### Oostakker  " >> ${FILE}
echo "![locatie park and ride zone Oostakker](graphs/locationOostakker.png)  " >> ${FILE}

echo "### The Loop  " >> ${FILE}
echo "![locatie park and ride zone The Loop](graphs/locationTheLoop.png)  " >> ${FILE}

echo "### Wondelgem  " >> ${FILE}
echo "![locatie park and ride zone Wondelgem](graphs/locationWondelgem.png)  " >> ${FILE}


echo "## Statistieken  " >> ${FILE}
echo "### Bourgoyen  " >> ${FILE}
cat ../descriptives/descriptivesBourgoyen.md >> ${FILE}
echo "  " >> ${FILE}

echo "### Gentbrugge Arsenaal  " >> ${FILE}
cat ../descriptives/descriptivesGentbruggeArsenaal.md >> ${FILE}
echo "  " >> ${FILE}

echo "### Oostakker  " >> ${FILE}
cat ../descriptives/descriptivesOostakker.md >> ${FILE}
echo "  " >> ${FILE}

echo "### The Loop  " >> ${FILE}
cat ../descriptives/descriptivesTheLoop.md >> ${FILE}
echo "  " >> ${FILE}

echo "### Wondelgem  " >> ${FILE}
cat ../descriptives/descriptivesWondelgem.md >> ${FILE}
echo "  " >> ${FILE}

echo "> *Dit rapport werd gegenereerd op ${DATUM} om ${TIJD} door ${USER}*" >> ${FILE}
