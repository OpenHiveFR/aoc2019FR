# aoc2019FR

Traduction Française des énoncés de l'Advent of Code 2019

Lien vers le site original : https://adventofcode.com/2019

Utilisé pour le [Summer Code 2020](https://openhivefr.github.io/summercode/2020/)

Le script **[compile.bat](https://github.com/openhivefr/aoc2019fr/blob/master/compile.bat)** compile les fichiers *markdown* en *HTML partiel (.phtml)*, c'est-à-dire en HTML sans balises body/head/html etc.

Ceci fait, le script compile les fichier .phtml en fichiers complets .html, contenant deux sections contenant les deux parties du puzzle du jours (aux `id`s respectifs `translation_part_one` et `translation_part_two`).

Le script utilise **[pandoc](https://pandoc.org)**. Il est notamment installable sous windows grâce au gestionnaire de paquets [chocolatey](https://chocolatey.org/) :
```bat
choco install pandoc
```