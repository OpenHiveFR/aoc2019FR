## --- Jour 10 : Station d'Observation ---

Vous volez à travers la ceinture d'astéroïdes et atteignez la station d'observation Cérès. Les elfes présents ici ont un problème urgent : ils ont du mal à pister tous les astéroïdes et ne sont pas certains d'être hors de danger.

Les elfes souhaiteraient construire une nouvelle station d'observation dans une zone proche dans l'espace. Ils vous tendent une carte de tous les astéroïdes de la région (l'entrée de votre puzzle).

La carte indique pour chaque emplacement s'il est vide (`.`) ou s'il contient un astéroïde (`#`). Les astéroïdes sont bien plus petits que leurs représentations sur la carte, et chacun des astéroïdes est positionné exactement au centre de la position où il a été marqué. Les astéroïdes peuvent être de décrits par des coordonnées ``X,Y``où `X` est la distance depuis la bordure gauche et `Y` la distance depuis la bordure haute (donc le coin supérieur-gauche est aux coordonnées ``0,0`` et la position immédiatement à sa droite est ``1,0``).

Votre rôle là-dedans est de trouver quel astéroïde serait le meilleur emplacement pour construire une *nouvelle station d'observation*. Une station d'observation est capable de *détecter* tout astéroïde avec lequel elle a une *ligne de vue directe*, c'est-à-dire sans autre astéroïde *exactement* entre eux. Cette ligne de vue peut être de n'importe quel angle, pas seulement les lignes de la grille ou en diagonale. Le *meilleur* emplacement est l'astéroïde permettant de *détecter* le plus grand nombre d'autres astéroïdes.

Pour illustrer tout ça, prenons la carte suivante :

```
.#..#
.....
#####
....#
...<em>#</em>#
```

Le meilleur emplacement pour une nouvelle station d'observation sur cette carte est l'astéroïde surligné en position ``3,4`` puisqu'il peut détecter `8` astéroïdes, plus que n'importe quel autre emplacement possible (le seul astéroïde qu'il ne peut détecter est celui en position ``1,0``, sa ligne de vue étant bloquée par l'astéroïde en position ``2,2``). Tout les autres astéroïdes sont de moins bons emplacements : il ne peuvent détecter que `7` astéroïdes ou moins. Voilà le nombre d'astéroïde qu'une station d'observation sur chaque astéroïde pourrait détecter :

```
.7..7
.....
67775
....7
...87
```

Voilà une carte comportant un astéroïde `#` et quelques exemples de manières dont une ligne de vue peut être bloquée. Si un astéroïde était positionné sur l'emplacement d'une lettre majuscule, les emplacements marqués de la même lettre en minuscule serait bloqués, et ne pourraient ainsi pas être détectés depuis l'astéroïde `#` :

```
#.........
...A......
...B..a...
.EDCG....a
..F.c.b...
.....c....
..efd.c.gb
.......c..
....f...c.
...e..d..c
```

Voici quelques exemples plus grands :

- Le meilleur emplacement est ``5,8``, avec `33` autres astéroïdes détectés :\
```
......#.#.
#..#.#....
..#######.
.#.#.###..
.#..#.....
..#....#.#
#..#....#.
.##.#..###
##...<em>#</em>..#.
.#....####
```
- Le meilleur emplacement est ``1,2``, avec `35` autres astéroïdes détectés :\
```
#.#...#.#.
.###....#.
.<em>#</em>....#...
##.#.#.#.#
....#.#.#.
.##..###.#
..#...##..
..##....##
......#...
.####.###.
```
- Le meilleur emplacement est ``6,3``, avec `41` autres astéroïdes détectés :\
```
.#..#..###
####.###.#
....###.#.
..###.<em>#</em>#.#
##.##.#.#.
....###..#
..#.#..#.#
#..#.#.###
.##...##.#
.....#.#..
```
- Le meilleur emplacement est ``11,13``, avec `210` autres astéroïdes détectés :\
```
.#..##.###...#######
##.############..##.
.#.######.########.#
.###.#######.####.#.
#####.##.#.##.###.##
..#####..#.#########
####################
#.####....###.#.#.##
##.#################
#####.##.###..####..
..######..##.#######
####.##.####...##..#
.#####..#.######.###
##...#.####<em>#</em>#####...
#.##########.#######
.####.#.###.###.#.##
....##.##.###..#####
.#.#.###########.###
#.#.#.#####.####.###
###.##.####.##.#..##
```

Trouvez le meilleur emplacement pour une nouvelle station d'observation. *Combien d'autres astéroïdes peuvent être détectés depuis cet emplacement ?*