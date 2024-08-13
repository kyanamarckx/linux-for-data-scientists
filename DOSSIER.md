# Dossier - Data Workflow

Hierin zal een overview gegeven worden met uitleg over de code in de scripts, welke commano's te runnen, ... .

## Gebruikte API

Ik heb gekozen voor een openbare API van [stad Gent](https://data.stad.gent/explore/dataset/real-time-bezetting-pr-gent/table/), namelijk de Real Time bezetting van de Park and Ride zones.

Deze geeft onder andere het aantal vrije parkeerplaatsen van die specifieke zone.

## Uitleg scripts

### 1.1 Verzamelen ruwe data

> Naam van het corresponderende script: 
> 
> `getdata.sh`

Aan de hand van curl wordt de data opgehaald van de API.
Die data wordt dan opgeslaan als een json-bestand genaamd `pr-data-___.json` in het mapje `data` en de boodschappen over de download worden in `output.log` gestoken.
Wanneer dit klaar is worden de permissies van iedereen gelijkgesteld aan 'lezen', daardoor worden de alle bestanden direct read-only gemaakt.

### 1.2 Data transformeren

> Namen van de corresponderende scripts:
> 
> `transformdataBourgoyen.sh`
> 
> `transformdataGentbruggeArsenaal.sh`
> 
> `transformdataOostakker.sh`
> 
> `transformdataTheLoop.sh`
> 
> `transformdataWondelgem.sh`

Als eerste wordt er een header toegevoegd aan csv-bestanden met de naam `data___.csv` in het mapje `transform`.
Daarna wordt er gelooped over alle json-bestanden in `data` en wordt er de nuttige informatie uitgehaald aan de hand van jq en een select-statement. Dit wordt dan toegevoegd aan het csv-bestand.
Ik heb hier geopteerd voor een Angelsaksische notatie voor de csv-bestanden.


### 1.3 Data analyseren

> Namen van de corresponderende scripts:
> 
> `analysedataBourgoyen.py`
> 
> `analysedataGentbruggeArsenaal.py`
> 
> `analysedataOostakker.py`
> 
> `analysedataTheLoop.py`
> 
> `analysedataWondelgem.py`

In dit onderdeel moet er een grafiek gegenereerd worden van de csv-bestanden uit de vorige stap, dit aan de hand van Python.
De eerste stap in het proces is alle data uitlezen, dit gebeurde via de `pandas`-library. 
Daarvan wordt er een dataframe aangemaakt en in variabelen gestoken.
De `matplotlib.pyplot`-library staat in voor het genereren van de grafiek over de vrije plaatsen.
Met de data die ik heb leek de beste optie een staafgrafiek, horizontaal uitgewerkt.
Details werden toegevoegd aan de grafiek (cijfers bij de staven, kleuren aangepast, titel toegevoegd, ...).
Wanneer dit afgerond is, wordt de gegenereerde grafiek opgeslaan als `graph___.png` in het mapje `graphs`.
De `plotly.express`-library staat in voor het genereren van een streetview map van de locatie van de geselecteerde P+R zone.
Dit gebeurt aan de hand van de longitude en latitude uit de API. 
Wanneer deze gegenereerd is, wordt ze opgeslaan als `location___.png` in het mapje `graphs`.
Als laatste worden er standaard statistieken berekend zoals het gemiddelde, het minimum en maximum aantal vrije plaatsen, ... .
Deze worden opgeslaan als `descriptives___.md` in het mapje `descriptives`.


### 1.4 Rapport genereren

> Namen van de corresponderende scripts:
> 
> `generatereportMD.sh`
> 
> `generatereportPDF.sh`

Om rapporten te genereren wordt alle verzamelde en aangemaakte data gebruikt om in een Markdown- en pdf-bestand om te zetten. 
Door middel van het script `generatereportMD.sh` wordt `report.md` aangemaakt en aangevuld met de grafieken, locaties en statistieken.
Door middel van het script `generatereportPDF.sh` wordt `report.pdf` aangemaakt en aangevuld met de grafieken, locaties en statistieken.
Helemaal onderaan de bestanden wordt er ook de dag en het uur van aanmaak / wijziging getoont.


### 1.5 Gehele workflow automatiseren

> Namen van de corresponderende scripts:
> 
> `automate.sh`
> 
> `make` of `make automate`

De laatste stap van heel de opdracht is het automatiseren van de workflow. 
Door het commando `./automate.sh` te runnen, gebeurt alles na elkaar waardoor je maar 1 script moet runnen in plaats van 14 verschillende scripts.
In dit script worden alle scripts aangeroepen en op het einde worden de resultaten automatisch gepushed naar de GitHub repo. 
Ik heb voor dit puntje ook een makefile bestand aangemaakt, deze voer je uit door `make` of `make automate` te runnen. In dit bestand roep ik het `automate.sh` script aan 

## Te runnen commando's

1) `cd data-workflow`

2) `./automate.sh` of `make` of `make automate`

## Nodige installaties

Python 3
- `sudo apt install python3.8`

Pandas (data uitlezen)
- `pip install pandas`

Matplotlib (data omzetten naar grafiek)
- `sudo apt-get install python3-matplotlib`

Plotly library (data omzetten naar kaart)
- `pip install plotly_express==0.4.0`
- `pip install -U kaleido`

Pandoc en bijhorende packages (MarkDown omzetten naar PDF)
- `sudo apt install pandoc`
- `sudo apt install texlive-latex-base`
- `sudo apt install texlive-fonts-recommended`
- `sudo apt install texlive-extra-utils`
- `sudo apt install texlive-latex-extra`
- `sudo apt install texlive-xetex`
