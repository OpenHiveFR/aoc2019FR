## --- partie Deux ---

Dès que vous leurs avez donné les coordonnées, les elfes déploient rapidement une Station Instantanée d'Observation à l'endroit que vous leurs avez indiqué et découvrent le pire : il y a simplement beaucoup trop d'astéroïdes.

La seule solution est *la vaporisation complète par laser géant*.

Heureusement, en plus d'un scanner à astéroïdes, la nouvelle station d'observation est par défaut déjà équipée avec un laser rotatif géant, parfait pour vaporiser  des astéroïdes. Le laser commence pointé *vers le haut*, et tourne toujours *dans le sens horaire*, vaporisant chaque astéroïde qu'il frappe.

Si plusieurs astéroïdes sont *exactement* alignés avec la station, le laser n'a assez de puissance que pour en vaporiser *un seul* avant de continuer sa rotation. En d'autres termes, l'astéroïde pouvant être *détecté* peut être vaporisé, mais si vaporiser un astéroïde en rend un autre détectable, l'astéroïde nouvellement détecté ne sera pas vaporisé jusqu'à ce que le laser soit revenu au même angle après une rotation de 360 degrés.

Par exemple, considérez la carte suivant, où l'astéroïde où se trouve la nouvelle station d'observation est notée d'un `X` :

```
.#....#####...#..
##...##.#####..##
##...#...#.#####.
..#.....X...###..
..#.#.....#....##
```

Les neuf premiers astéroïdes à être vaporisés, dans l'ordre, seraient :

<pre><code>.#....###<em24</em>...#..
##...##.<em13</em>#<em>67</em>..<em>9</em>#
##...#...<em>5</em>.<em>8</em>####.
..#.....X...###..
..#.#.....#....##
</code></pre>

Notez que certains astéroïdes (ceux derrière les astéroïdes marqués `1`, `5` et `7`) ne seraient pas vaporisés avant la prochaine rotation complète. Le laser continuerait donc son tour : les neuf prochains à être vaporisés seraient :

<pre><code>.#....###.....#..
##...##...#.....#
##...#......<em>1234</em>.
..#.....X...<em>5</em>##..
..#.<em>9</em>.....<em>8</em>....<em>76</em>
</code></pre>

Les neuf prochains seraient :

<pre><code>.<em>8</em>....###.....#..
<em>56</em>...<em>9</em>#...#.....#
<em>34</em>...<em>7</em>...........
..<em2</em>.....X....##..
..<em>1</em>..............
</code></pre>

Enfin, le laser termine son premier tout complet (destructions des astéroïdes de `1` à `3`), effectue une seconde rotation complète (destruction des astéroïdes de `4` à `8`), et vaporise le dernier astéroïde (`9`) pendant sa troisième (et dernière donc) rotation :

<pre><code>......<em>234</em>.....<em6</em>..
......<em>1</em>...<em>5</em>.....<em>7</em>
.................
........X....<em>89</em>..
.................
</code></pre>

Dans le grand exemple ci-dessus (celui avec le meilleur emplacement pour la station d'observation aux coordonnées ``11,13``) :

- Le 1er astéroïde à être vaporisé serait aux coordonnées ``11,12``.
- Le 2ème astéroïde à être vaporisé serait aux coordonnées ``12,1``.
- Le 3ème astéroïde à être vaporisé serait aux coordonnées ``12,2``.
- Le 10ème astéroïde à être vaporisé serait aux coordonnées ``12,8``.
- Le 20ème astéroïde à être vaporisé serait aux coordonnées ``16,0``.
- Le 50ème astéroïde à être vaporisé serait aux coordonnées ``16,9``.
- Le 100ème astéroïde à être vaporisé serait aux coordonnées ``10,16``.
- Le 199ème astéroïde à être vaporisé serait aux coordonnées ``9,6``.
- *Le 200ème astéroïde à être vaporisé serait aux coordonnées ``8,2``.*
- Le 201ème astéroïde à être vaporisé serait aux coordonnées ``10,9``.
- Le 299ème et dernier astéroïde à être vaporisé serait aux coordonnées ``11,1``.

Les elfes placent leur paris sur quel astéroïde sera le *200ème* à se faire vaporiser. Gagnez le pari en déterminant lequel sera cet astéroïde. *Qu'obtenez-vous si vous multipliez sa position X par `100` et y ajoutez sa position Y ?* (par exemple, ``8,2`` devient `802`.)