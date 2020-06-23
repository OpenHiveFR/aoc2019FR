## --- Partie Deux ---

Tous ces dérapages dans l'espace vous font réfléchir sur la nature de l'univers. L'histoire se répète-t-elle vraiment ? Vous vous demandez si les lunes retourneront un jour à leur emplacement d'origine.

Déterminez *le nombre d'étapes* devant avoir lieu avant que les positions et vélocités de *toutes les lunes* ne retournent à leur état initial.

Par exemple, dans le premier exemple, il faut `2772` étapes avant qu'elles ne reviennent à leur état initial :

```
Après 0 étapes:
pos=<x= -1, y=  0, z=  2>, vel=<x=  0, y=  0, z=  0>
pos=<x=  2, y=-10, z= -7>, vel=<x=  0, y=  0, z=  0>
pos=<x=  4, y= -8, z=  8>, vel=<x=  0, y=  0, z=  0>
pos=<x=  3, y=  5, z= -1>, vel=<x=  0, y=  0, z=  0>

Après 2770 étapes:
pos=<x=  2, y= -1, z=  1>, vel=<x= -3, y=  2, z=  2>
pos=<x=  3, y= -7, z= -4>, vel=<x=  2, y= -5, z= -6>
pos=<x=  1, y= -7, z=  5>, vel=<x=  0, y= -3, z=  6>
pos=<x=  2, y=  2, z=  0>, vel=<x=  1, y=  6, z= -2>

Après 2771 étapes:
pos=<x= -1, y=  0, z=  2>, vel=<x= -3, y=  1, z=  1>
pos=<x=  2, y=-10, z= -7>, vel=<x= -1, y= -3, z= -3>
pos=<x=  4, y= -8, z=  8>, vel=<x=  3, y= -1, z=  3>
pos=<x=  3, y=  5, z= -1>, vel=<x=  1, y=  3, z= -1>

Après 2772 étapes:
pos=<x= -1, y=  0, z=  2>, vel=<x=  0, y=  0, z=  0>
pos=<x=  2, y=-10, z= -7>, vel=<x=  0, y=  0, z=  0>
pos=<x=  4, y= -8, z=  8>, vel=<x=  0, y=  0, z=  0>
pos=<x=  3, y=  5, z= -1>, vel=<x=  0, y=  0, z=  0>
```

Bien sûr, l'univers pourrait rester *très très longtemps* sans se répéter. Voici une copie du second exemple plus haut :

```
<x=-8, y=-10, z=0>
<x=5, y=5, z=10>
<x=2, y=-7, z=3>
<x=9, y=-8, z=-3>
```

Cet ensemble de positions initiales mets `4686774924` étapes avant de revenir à un état précédent ! Clairement, vous devez trouver *un moyen de simuler l'univers plus efficacement*

*Combien d'étapes faut-il* pour trouver le premier état correspondant parfaitement à un état précédent ?