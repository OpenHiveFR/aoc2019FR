## --- Jour 3 : Câbles croisés ---

L'appui gravitationnel a été réussi, et vous êtes bien engagé sur le chemin de la station de carburant de Vénus. Dans la cohue sur Terre, le système de gestion du carburant n'a pas été complètement installé, il s'agit donc de la prochaine priorité sur la liste.

Ouvrir le panneau avant révèle un méli-mélo de câbles. Plus précisément, *deux câbles* sont connectés à un port central et s'étendent une grille. Vous repérez les chemins que les deux câbles empruntent hors du port central, un câble par ligne de texte (l'entrée de votre puzzle)

Les câbles se tordent et tournent, mais les deux câbles se croisent parfois. Pour réparer le circuit, vous devez *trouver le point d'intersection le plus proche du port central*. Comme les câbles sont sur une grille, utilisez la [distance de Manhattan](https://fr.wikipedia.org/wiki/Distance_de_Manhattan) pour les mesures. Même si les deux câbles se croisent techniquement au port central où ils commencent tous les deux, cette intersection ne compte pas, et l'intersection d'un câble avec lui-même ne compte pas non plus.

Par exemple, si le chemin du premier câble est ``R8,U5,L5,D3``, alors en commençant au port central (`o`), il part alors à droite pendant `8` unités, vers le haut pour `5`, vers la gauche pour `5` et enfin vers le bas pour `3` : 

```
...........
...........
...........
....+----+.
....|....|.
....|....|.
....|....|.
.........|.
.o-------+.
...........
```

Ensuite, si le deuxième câble a pour chemin ``U7,R6,D4,L4``, alors il va vers le haut pour `7` unités, vers la droite pour `6`, vers le bas pour `4`, et enfin vers la gauche pour `4` :

```
...........
.+-----+...
.|.....|...
.|..+--X-+.
.|..|..|.|.
.|.-X--+.|.
.|..|....|.
.|.......|.
.o-------+.
...........
```

Ces câbles se croisent à deux endroits (marqués `X`), mais l'endroit le plus bas est en l'occurrence le plus proche du port central : sa distance est de ``3 + 3 = 6``.

Voici quelques exemples supplémentaires :

- ``R75,D30,R83,U83,L12,D49,R71,U7,L72``\
``U62,R66,U55,R34,D71,R55,D58,R83`` : Distance = `159`
- ``R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51``\
``U98,R91,D20,R16,D67,R40,U7,R15,U6,R7``: Distance = `135`

*Quelle est la distance de Manhattan* depuis le port central jusqu'à l'intersection la plus proche