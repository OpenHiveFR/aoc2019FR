# --- Jour 12 : Le problème a N corps ---

l'espace proche de jupiter n'est pas un lieu très hospitalier : vous devez faire attention à une [grande tache rouge distrayante](https://fr.wikipedia.org/wiki/Grande_Tache_rouge), à d'extrêmes niveaux de [radiations](https://fr.wikipedia.org/wiki/Magn%C3%A9tosph%C3%A8re_de_Jupiter), et a un [sacré paquet de lunes](https://fr.wikipedia.org/wiki/Satellites_naturels_de_Jupiter#Table) tournoyant dans le coin. Vous décidez de commencer en pistant les quatre plus grandes lunes : *Io*, *Europe*, *Ganymède* et *Callisto*.

Après un bref scan, vous calculez la *position de chaque lune* (l'entrée de votre puzzle). Vous devez simplement *simuler leurs mouvements* pour les éviter.

Chaque lune possède une position en trois dimensions (`x`, `y`, et `z`) et une vélocité en trois dimensions (toujours `x`, `y` et `z`). La position de chaque lune vous est donnée par votre scan, et les trois dimensions de la vélocité de chaque lune commence à `0`.

Simulez les mouvements des lunes en *étapes de temps*. Pendant chacune de ces étapes, commencez par mettre à jour la vélocité de chaque lune en leur appliquant la *gravité*. Ensuite, une fois que tous les vélocités auront été mises à jour, mettez à jour la position de chaque lune en leur appliquant leurs vélocités. Le temps avance d'une étape une fois que toutes les positions sont mises à jour.

Pour appliquer la *gravité*, prenez une *paire* de lunes. Sur chaque axe (`x`, `y` et `z`), la vélocité de chaque lune est modifiée d'*exactement +1 ou -1* pour tirer les lunes l'une à l'autre. Par exemple, si Ganymède a une position `x` de `3`, et que Callisto a une position `x` de `5`, alors la dimension `x` de la vélocité de Ganymède *est modifiée de +1* (car ``5 > 3``) et celle de la dimension `x` de Callisto *est modifiée de -1* (car ``3 < 5``). Cependant, si les positions sur un axe données sont identiques, les vélocités *ne sont pas modifiés* sur cet axe pour cette paire de lunes.

Une fois la gravité appliquée, appliquez la vélocité : ajoutez simplement la vélocité de chaque lune à sa propre position. Par exemple, si Europe a une position de ``x=1, y=2, z=3`` et une vélocité de ``x=-2, y=0, z=3``, alors sa nouvelle position sera ``x=-1, y=é, z=6``. Ce procédé ne modifie la vélocité d'aucune lune.

Par exemple, supposez que votre scan révèle les positions suivantes :

```
<x=-1, y=0, z=2>
<x=2, y=-10, z=-7>
<x=4, y=-8, z=8>
<x=3, y=5, z=-1>
```

Simuler les mouvements de ces lunes se ferait comme suit :

```
pos=<x=-1, y=  0, z= 2>, vel=<x= 0, y= 0, z= 0>
pos=<x= 2, y=-10, z=-7>, vel=<x= 0, y= 0, z= 0>
pos=<x= 4, y= -8, z= 8>, vel=<x= 0, y= 0, z= 0>
pos=<x= 3, y=  5, z=-1>, vel=<x= 0, y= 0, z= 0>

Après 1 étapes:
pos=<x= 2, y=-1, z= 1>, vel=<x= 3, y=-1, z=-1>
pos=<x= 3, y=-7, z=-4>, vel=<x= 1, y= 3, z= 3>
pos=<x= 1, y=-7, z= 5>, vel=<x=-3, y= 1, z=-3>
pos=<x= 2, y= 2, z= 0>, vel=<x=-1, y=-3, z= 1>

Après 2 étapes:
pos=<x= 5, y=-3, z=-1>, vel=<x= 3, y=-2, z=-2>
pos=<x= 1, y=-2, z= 2>, vel=<x=-2, y= 5, z= 6>
pos=<x= 1, y=-4, z=-1>, vel=<x= 0, y= 3, z=-6>
pos=<x= 1, y=-4, z= 2>, vel=<x=-1, y=-6, z= 2>

Après 3 étapes:
pos=<x= 5, y=-6, z=-1>, vel=<x= 0, y=-3, z= 0>
pos=<x= 0, y= 0, z= 6>, vel=<x=-1, y= 2, z= 4>
pos=<x= 2, y= 1, z=-5>, vel=<x= 1, y= 5, z=-4>
pos=<x= 1, y=-8, z= 2>, vel=<x= 0, y=-4, z= 0>

Après 4 étapes:
pos=<x= 2, y=-8, z= 0>, vel=<x=-3, y=-2, z= 1>
pos=<x= 2, y= 1, z= 7>, vel=<x= 2, y= 1, z= 1>
pos=<x= 2, y= 3, z=-6>, vel=<x= 0, y= 2, z=-1>
pos=<x= 2, y=-9, z= 1>, vel=<x= 1, y=-1, z=-1>

Après 5 étapes:
pos=<x=-1, y=-9, z= 2>, vel=<x=-3, y=-1, z= 2>
pos=<x= 4, y= 1, z= 5>, vel=<x= 2, y= 0, z=-2>
pos=<x= 2, y= 2, z=-4>, vel=<x= 0, y=-1, z= 2>
pos=<x= 3, y=-7, z=-1>, vel=<x= 1, y= 2, z=-2>

Après 6 étapes:
pos=<x=-1, y=-7, z= 3>, vel=<x= 0, y= 2, z= 1>
pos=<x= 3, y= 0, z= 0>, vel=<x=-1, y=-1, z=-5>
pos=<x= 3, y=-2, z= 1>, vel=<x= 1, y=-4, z= 5>
pos=<x= 3, y=-4, z=-2>, vel=<x= 0, y= 3, z=-1>

Après 7 étapes:
pos=<x= 2, y=-2, z= 1>, vel=<x= 3, y= 5, z=-2>
pos=<x= 1, y=-4, z=-4>, vel=<x=-2, y=-4, z=-4>
pos=<x= 3, y=-7, z= 5>, vel=<x= 0, y=-5, z= 4>
pos=<x= 2, y= 0, z= 0>, vel=<x=-1, y= 4, z= 2>

Après 8 étapes:
pos=<x= 5, y= 2, z=-2>, vel=<x= 3, y= 4, z=-3>
pos=<x= 2, y=-7, z=-5>, vel=<x= 1, y=-3, z=-1>
pos=<x= 0, y=-9, z= 6>, vel=<x=-3, y=-2, z= 1>
pos=<x= 1, y= 1, z= 3>, vel=<x=-1, y= 1, z= 3>

Après 9 étapes:
pos=<x= 5, y= 3, z=-4>, vel=<x= 0, y= 1, z=-2>
pos=<x= 2, y=-9, z=-3>, vel=<x= 0, y=-2, z= 2>
pos=<x= 0, y=-8, z= 4>, vel=<x= 0, y= 1, z=-2>
pos=<x= 1, y= 1, z= 5>, vel=<x= 0, y= 0, z= 2>

Après 10 étapes:
pos=<x= 2, y= 1, z=-3>, vel=<x=-3, y=-2, z= 1>
pos=<x= 1, y=-8, z= 0>, vel=<x=-1, y= 1, z= 3>
pos=<x= 3, y=-6, z= 1>, vel=<x= 3, y= 2, z=-3>
pos=<x= 2, y= 0, z= 4>, vel=<x= 1, y=-1, z=-1>
```

Ensuite, il pourrait se révéler utile de calculer *l'énergie totale du système*. L'énergie totale d'une seule lune est son *énergie potentielle* multipliée par *son énergie cinétique*. L'*énergie potentielle* d'une lune est la somme des [valeurs absolues](https://fr.wikipedia.org/wiki/Valeur_absolue) de ces coordonnées de position `x`, `y` et `z`. L'*énergie cinétique* d'une lune est la somme des valeurs absolues des valeurs `x`, `y` et `z` de sa vélocité. Ci-dessous, chaque ligne montre les calculs des énergiespotentielle (`pot`), cinétique (`cin`) et totale (`total`) pour les quatre lunes de l'exemple du dessus :

```
Énergie après 10 étapes :
pot : 2 + 1 + 3 =  6;   cin : 3 + 2 + 1 = 6;   total :  6 * 6 = 36
pot : 1 + 8 + 0 =  9;   cin : 1 + 1 + 3 = 5;   total :  9 * 5 = 45
pot : 3 + 6 + 1 = 10;   cin : 3 + 2 + 3 = 8;   total : 10 * 8 = 80
pot : 2 + 0 + 4 =  6;   cin : 1 + 1 + 1 = 3;   total :  6 * 3 = 18
Somme d'énergie totale : 36 + 45 + 80 + 18 = <em>179</em>
```

Pour l'exemple ci-dessus, additionner les énergies totales de toutes les lunes après 10 étapes donne l'énergie totale du système, `<em>179</em>`.

Voici un second exemple :

```
<x=-8, y=-10, z=0>
<x=5, y=5, z=10>
<x=2, y=-7, z=3>
<x=9, y=-8, z=-3>
```

Notons le résultat simulation toutes les 10 étapes pendant 100 étapes :

```
Après 0 étapes:
pos=<x= -8, y=-10, z=  0>, vel=<x=  0, y=  0, z=  0>
pos=<x=  5, y=  5, z= 10>, vel=<x=  0, y=  0, z=  0>
pos=<x=  2, y= -7, z=  3>, vel=<x=  0, y=  0, z=  0>
pos=<x=  9, y= -8, z= -3>, vel=<x=  0, y=  0, z=  0>

Après 10 étapes:
pos=<x= -9, y=-10, z=  1>, vel=<x= -2, y= -2, z= -1>
pos=<x=  4, y= 10, z=  9>, vel=<x= -3, y=  7, z= -2>
pos=<x=  8, y=-10, z= -3>, vel=<x=  5, y= -1, z= -2>
pos=<x=  5, y=-10, z=  3>, vel=<x=  0, y= -4, z=  5>

Après 20 étapes:
pos=<x=-10, y=  3, z= -4>, vel=<x= -5, y=  2, z=  0>
pos=<x=  5, y=-25, z=  6>, vel=<x=  1, y=  1, z= -4>
pos=<x= 13, y=  1, z=  1>, vel=<x=  5, y= -2, z=  2>
pos=<x=  0, y=  1, z=  7>, vel=<x= -1, y= -1, z=  2>

Après 30 étapes:
pos=<x= 15, y= -6, z= -9>, vel=<x= -5, y=  4, z=  0>
pos=<x= -4, y=-11, z=  3>, vel=<x= -3, y=-10, z=  0>
pos=<x=  0, y= -1, z= 11>, vel=<x=  7, y=  4, z=  3>
pos=<x= -3, y= -2, z=  5>, vel=<x=  1, y=  2, z= -3>

Après 40 étapes:
pos=<x= 14, y=-12, z= -4>, vel=<x= 11, y=  3, z=  0>
pos=<x= -1, y= 18, z=  8>, vel=<x= -5, y=  2, z=  3>
pos=<x= -5, y=-14, z=  8>, vel=<x=  1, y= -2, z=  0>
pos=<x=  0, y=-12, z= -2>, vel=<x= -7, y= -3, z= -3>

Après 50 étapes:
pos=<x=-23, y=  4, z=  1>, vel=<x= -7, y= -1, z=  2>
pos=<x= 20, y=-31, z= 13>, vel=<x=  5, y=  3, z=  4>
pos=<x= -4, y=  6, z=  1>, vel=<x= -1, y=  1, z= -3>
pos=<x= 15, y=  1, z= -5>, vel=<x=  3, y= -3, z= -3>

Après 60 étapes:
pos=<x= 36, y=-10, z=  6>, vel=<x=  5, y=  0, z=  3>
pos=<x=-18, y= 10, z=  9>, vel=<x= -3, y= -7, z=  5>
pos=<x=  8, y=-12, z= -3>, vel=<x= -2, y=  1, z= -7>
pos=<x=-18, y= -8, z= -2>, vel=<x=  0, y=  6, z= -1>

Après 70 étapes:
pos=<x=-33, y= -6, z=  5>, vel=<x= -5, y= -4, z=  7>
pos=<x= 13, y= -9, z=  2>, vel=<x= -2, y= 11, z=  3>
pos=<x= 11, y= -8, z=  2>, vel=<x=  8, y= -6, z= -7>
pos=<x= 17, y=  3, z=  1>, vel=<x= -1, y= -1, z= -3>

Après 80 étapes:
pos=<x= 30, y= -8, z=  3>, vel=<x=  3, y=  3, z=  0>
pos=<x= -2, y= -4, z=  0>, vel=<x=  4, y=-13, z=  2>
pos=<x=-18, y= -7, z= 15>, vel=<x= -8, y=  2, z= -2>
pos=<x= -2, y= -1, z= -8>, vel=<x=  1, y=  8, z=  0>

Après 90 étapes:
pos=<x=-25, y= -1, z=  4>, vel=<x=  1, y= -3, z=  4>
pos=<x=  2, y= -9, z=  0>, vel=<x= -3, y= 13, z= -1>
pos=<x= 32, y= -8, z= 14>, vel=<x=  5, y= -4, z=  6>
pos=<x= -1, y= -2, z= -8>, vel=<x= -3, y= -6, z= -9>

Après 100 étapes:
pos=<x=  8, y=-12, z= -9>, vel=<x= -7, y=  3, z=  0>
pos=<x= 13, y= 16, z= -3>, vel=<x=  3, y=-11, z= -5>
pos=<x=-29, y=-11, z= -1>, vel=<x= -3, y=  7, z=  4>
pos=<x= 16, y=-13, z= 23>, vel=<x=  7, y=  1, z=  1>

Energy after 100 étapes:
pot :  8 + 12 +  9 = 29;   cin : 7 +  3 + 0 = 10;   total : 29 * 10 = 290
pot : 13 + 16 +  3 = 32;   cin : 3 + 11 + 5 = 19;   total : 32 * 19 = 608
pot : 29 + 11 +  1 = 41;   cin : 3 +  7 + 4 = 14;   total : 41 * 14 = 574
pot : 16 + 13 + 23 = 52;   cin : 7 +  1 + 1 =  9;   total : 52 *  9 = 468
Somme d'énergie totale : 290 + 608 + 574 + 468 = <em>1940</em>
```

*Quelle est l'énergie totale dans le système* après avoir simulé le mouvement des lunes données par votre scan pendant `1000` pas ?