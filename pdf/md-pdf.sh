#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

DATUM=$(date +'%d/%m/%Y')
TIJD=$(date +'%H:%M')
USER="Kyana Marckx"
FILE="md-for-pdf.md"

echo "# Rapport" > ${FILE}
echo "" >> ${FILE}

echo "Dit is een rapport over de data van de park and ride zones Bourgoyen, Gentbrugge Arsenaal, Oostakker, The Loop en Wondelgem in Gent." >> ${FILE}
echo "" >> ${FILE}

echo "## Grafieken" >> ${FILE}
echo "" >> ${FILE}

echo "### Bourgoyen" >> ${FILE}
echo "" >> ${FILE}
echo "Zie 'Bijlagen' onderaan document, Figure 1" >> ${FILE}
echo "" >> ${FILE}

echo "### Gentbrugge Arsenaal" >> ${FILE}
echo "" >> ${FILE}
echo "Zie 'Bijlagen' onderaan document, Figure 2" >> ${FILE}
echo "" >> ${FILE}

echo "### Oostakker" >> ${FILE}
echo "" >> ${FILE}
echo "Zie 'Bijlagen' onderaan document, Figure 3" >> ${FILE}
echo "" >> ${FILE}

echo "### The Loop" >> ${FILE}
echo "" >> ${FILE}
echo "Zie 'Bijlagen' onderaan document, Figure 4" >> ${FILE}
echo "" >> ${FILE}

echo "### Wondelgem" >> ${FILE}
echo "" >> ${FILE}
echo "Zie 'Bijlagen' onderaan document, Figure 5" >> ${FILE}
echo "" >> ${FILE}

echo "## Locaties" >> ${FILE}
echo "" >> ${FILE}

echo "### Bourgoyen" >> ${FILE}
echo "" >> ${FILE}
echo "Zie 'Bijlagen' onderaan document, Figure 6" >> ${FILE}
echo "" >> ${FILE}

echo "### Gentbrugge Arsenaal" >> ${FILE}
echo "" >> ${FILE}
echo "Zie 'Bijlagen' onderaan document, Figure 7" >> ${FILE}
echo "" >> ${FILE}

echo "### Oostakker" >> ${FILE}
echo "" >> ${FILE}
echo "Zie 'Bijlagen' onderaan document, Figure 8" >> ${FILE}
echo "" >> ${FILE}

echo "### The Loop" >> ${FILE}
echo "" >> ${FILE}
echo "Zie 'Bijlagen' onderaan document, Figure 9" >> ${FILE}
echo "" >> ${FILE}

echo "### Wondelgem" >> ${FILE}
echo "" >> ${FILE}
echo "Zie 'Bijlagen' onderaan document, Figure 10" >> ${FILE}
echo "" >> ${FILE}

echo "## Statistieken" >> ${FILE}
echo "" >> ${FILE}

echo "### Bourgoyen" >> ${FILE}
cat ../descriptives/descriptivesBourgoyen.md >> ${FILE}
echo "" >> ${FILE}
echo "" >> ${FILE}

echo "### Gentbrugge Arsenaal" >> ${FILE}
cat ../descriptives/descriptivesGentbruggeArsenaal.md >> ${FILE}
echo "" >> ${FILE}
echo "" >> ${FILE}

echo "### Oostakker" >> ${FILE}
cat ../descriptives/descriptivesOostakker.md >> ${FILE}
echo "" >> ${FILE}
echo "" >> ${FILE}

echo "### The Loop" >> ${FILE}
cat ../descriptives/descriptivesTheLoop.md >> ${FILE}
echo "" >> ${FILE}
echo "" >> ${FILE}

echo "### Wondelgem" >> ${FILE}
cat ../descriptives/descriptivesWondelgem.md >> ${FILE}
echo "" >> ${FILE}
echo "" >> ${FILE}

echo "> Dit rapport werd gegenereerd op ${DATUM} om ${TIJD} door ${USER}" >> ${FILE}
echo "" >> ${FILE}

echo "## Bijlagen" >> ${FILE}
echo "" >> ${FILE}
echo "![grafiek bezetting park and ride zone Bourgoyen](../graphs/graphBourgoyen.png)" >> ${FILE}
echo "" >> ${FILE}
echo "![grafiek bezetting park and ride zone Gentbrugge Arsenaal](../graphs/graphGentbruggeArsenaal.png)" >> ${FILE}
echo "" >> ${FILE}
echo "![grafiek bezetting park and ride zone Oostakker](../graphs/graphOostakker.png)" >> ${FILE}
echo "" >> ${FILE}
echo "![grafiek bezetting park and ride zone The Loop](../graphs/graphTheLoop.png)" >> ${FILE}
echo "" >> ${FILE}
echo "![grafiek bezetting park and ride zone Wondelgem](../graphs/graphWondelgem.png)" >> ${FILE}
echo "" >> ${FILE}
echo "![locatie park and ride zone Bourgoyen](../graphs/locationBourgoyen.png)" >> ${FILE}
echo "" >> ${FILE}
echo "![locatie park and ride zone Gentbrugge Arsenaal](../graphs/locationGentbruggeArsenaal.png)" >> ${FILE}
echo "" >> ${FILE}
echo "![locatie park and ride zone Oostakker](../graphs/locationOostakker.png)" >> ${FILE}
echo "" >> ${FILE}
echo "![locatie park and ride zone The Loop](../graphs/locationTheLoop.png)" >> ${FILE}
echo "" >> ${FILE}
echo "![locatie park and ride zone Wondelgem](../graphs/locationWondelgem.png)" >> ${FILE}
echo "" >> ${FILE}
echo "" >> ${FILE}


