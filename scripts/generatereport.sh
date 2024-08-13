#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

datum=$(date +'%d/%m/%Y')
tijd=$(date +'%H:%M')
user="Kyana Marckx"

echo "# Rapport" > ../report.md
echo "" >> ../report.md
echo "Dit is een rapport over de data van de park and ride zones Bourgoyen, Gentbrugge Arsenaal, Oostakker, The Loop en Wondelgem in Gent." >> ../report.md
echo "" >> ../report.md
echo "## Grafieken" >> ../report.md
echo "" >> ../report.md
echo "![grafiek bezetting park and ride zone Bourgoyen](graphs/graphBourgoyen.png)" >> ../report.md
echo "" >> ../report.md
echo "![grafiek bezetting park and ride zone Gentbrugge Arsenaal](graphs/graphGentbruggeArsenaal.png)" >> ../report.md
echo "" >> ../report.md
echo "![grafiek bezetting park and ride zone Oostakker](graphs/graphOostakker.png)" >> ../report.md
echo "" >> ../report.md
echo "![grafiek bezetting park and ride zone The Loop](graphs/graphTheLoop.png)" >> ../report.md
echo "" >> ../report.md
echo "![grafiek bezetting park and ride zone Wondelgem](graphs/graphWondelgem.png)" >> ../report.md
echo "" >> ../report.md
echo "## Statistieken" >> ../report.md
echo "" >> ../report.md
echo "Bourgoyen :" >> ../report.md
cat ../descriptives/descriptivesBourgoyen.md >> ../report.md
echo "" >> ../report.md
echo "" >> ../report.md
echo "Gentbrugge Arsenaal :" >> ../report.md
cat ../descriptives/descriptivesGentbruggeArsenaal.md >> ../report.md
echo "" >> ../report.md
echo "" >> ../report.md
echo "Oostakker :" >> ../report.md
cat ../descriptives/descriptivesOostakker.md >> ../report.md
echo "" >> ../report.md
echo "" >> ../report.md
echo "The Loop :" >> ../report.md
cat ../descriptives/descriptivesTheLoop.md >> ../report.md
echo "" >> ../report.md
echo "" >> ../report.md
echo "Wondelgem :" >> ../report.md
cat ../descriptives/descriptivesWondelgem.md >> ../report.md
echo "" >> ../report.md
echo "" >> ../report.md


echo "> Dit rapport werd gegenereerd op $datum om $tijd door $user" >> ../report.md
