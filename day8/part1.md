## --- Jour 8 : Format d'Images Spatial ---

Le moral des elfes remonte lorsqu'ils remarquent que vous avez la possibilité de redémarrer l'un de leurs rovers martiens, et vous demandent alors si vous accepteriez de faire un bref séjour sur Mars. Vous faites atterrir le vaisseau près du rover.

Quand vous atteignez le rover, vous découvrez qu'il est en fait déjà en train de redémarrer ! Il attends simplement que quelqu'un entre le mot-de-passe de son [BIOS](https://fr.wikipedia.org/wiki/BIOS_(informatique)). L'elfe responsable du rover prends une photo du mot-de-passe (l'entrée de votre puzzle) et vous l'envoie via le Réseau Digital d'Envoi.

Hélas, les images envoyées par le Réseau Digital d'Envoi ne sont pas encodées dans un format habituel ; à la place, elles sont encodées en Format d'Images Spatial. Aucun des elfes ne se souvient de la raison de cette différence. Ils vous envoient des instructions pour le décoder.

Les images sont envoyées en tant que séries de chiffres représentant chacun la couleur d'un unique pixel. Les chiffres remplissent chaque ligne d'une image de gauche à droite, puis se déplacent vers la ligne du dessous, remplissant les lignes une par une de haut en bas jusqu'à ce que chaque pixel de l'image soit rempli.

Chaque image est définie en réalité par une série de *couches* de tailles identiques, remplies de cette manière. En conséquence, le premier chiffre correspond au coin supérieur-gauche de la première couche, le second chiffre au pixel directement situé à droite du coin supérieur-gauche sur cette même couche, et ainsi de suite  jusqu'au dernier chiffre, correspondant au coin inférieur-droit de la dernière couche.

Par exemple, en admettant une image de `3` pixels de long sur `2` pixels de haut, les données d'images `123456789012` correspond aux couches suivante :

```
Couche 1 : 123
           456

Couche 2 : 789
           012
```

L'image que vous avez reçue est de *`25` pixels de long sur `6` pixels de haut`.

Pour s'assurer que l'image n'a pas été corrompue pendant la transmission, les elfes voudraient que vous trouviez la couche contenant *le moins de chiffres `0`*. Sur cette couche, quel est *le nombre de chiffres `1` multiplié par le nombre de chiffres `2` ?*