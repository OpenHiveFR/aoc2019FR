# --- Partie 2 ---

Il se trouve que le circuit est très sensible au rythme ! Vous allez en fait avoir besoin de *minimiser le délai du signal*.

Pour ce faire, calculez le *nombre de pas* que chacun des câble doit effectuer pour atteindre chaque intersection et choisissez l'intersection où *la somme des pas de chacun des deux câbles* est la plus basse. Si un câble visite un emplacement de la grille plusieurs fois, utilisez le nombre de pas pour la *première* fois qu'il atteint cette position pour le calcul de la valeur d'intersection spécifique à cet emplacement si il y en a une.

Le nombre de pas qu'un câble prends pour arriver à un endroit est le nombre total de carrés de la grille où le câble est entré pour atteindre cet endroit, incluant l'intersection étudiée. À nouveau, considérons l'exemple d'au-dessus :

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

Dans l'exemple ci-dessus, l'intersection la plus proche du port central est atteinte après ``8+5+5+2 = <em>20</em>`` pas par le premier câble et ``7+6+4+3 = <em>20</em>`` pas par le second câble, pour un total de ``20+20 = <em>40</em>`` pas.

Cependant, l'intersection la plus haute est en fait la meilleure : le premier câble mets seulement ``8+5+2 = <em>15</em>`` pas et le second câble seulement ``7+6+2 = <em>15</em>`` pas pour y accéder, soit un total de seulement ``15+15 = <em>30</em>`` pas.

Voici les meilleurs pas pour les exemple supplémentaires donnés plus tôt :

- ``R75,D30,R83,U83,L12,D49,R71,U7,L72``\
``U62,R66,U55,R34,D71,R55,D58,R83`` : Pas = `610`
- ``R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51``\
``U98,R91,D20,R16,D67,R40,U7,R15,U6,R7``: Pas = `410`

*Quel est le nombre le plus bas de pas combinés que les deux câbles doivent prendre pour atteindre une intersection ?*