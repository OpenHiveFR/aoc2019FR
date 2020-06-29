## --- Jour 2 : Alarme de programme 1202 ---

En route vers votre [Appui Gravitationnel](https://fr.wikipedia.org/wiki/Assistance_gravitationnelle) autour de la lune, votre vaisseau bipe furieusement une "[Alarme de programme 1202](https://www.hq.nasa.gov/alsj/a11/a11.landing.html#1023832)". À la radio, un elfe est déjà en train d'expliquer comment gérer la situation : "Ne vous inquiétez pas, c'est tout-à-fait norma--". L'ordinateur [s'enflamme](https://en.wikipedia.org/wiki/Halt_and_Catch_Fire).

Vous prévenez que la [Magic Smoke](https://fr.wiktionary.org/wiki/magic_smoke) de l'ordinateur à l'air de s'être échappée. "Cet ordinateur faisait tourner des programmes en *Intcode* comme le programme d'appui gravitationnel sur lequel il travaillait. Il y a sûrement assez de pièces de surplus  là-haut pour construire un nouvel ordinateur Intcode !"

Un programme Intcode est une liste d'[entiers relatifs (integers)](https://fr.wikipedia.org/wiki/Entier_relatif) séparés par des virgules (par exemple ``1,0,03,99``). Pour en exécuter un, commencez par regarder le premier nombre, (appelé position `0`). Là, vous trouverez un *code d'opération (opcode)* (soit `1`, `2` ou `99`). L'opcode indique quelle opération effectuer : Par exemple, `99` indique que le programme est terminé et doit arrêter son exécution immédiatement. Rencontrer un opcode inconnu signifie que quelque chose s'est mal passé.

L'opcode `1` *additionne* les deux nombres lus depuis deux positions et stocke le résultat dans une troisième position. Les trois nombres situés *immédiatement après* l'opcode dans le programme sont ces trois positions : les deux premiers indiquent les *positions* depuis lesquelles lire les valeurs d'entrée, et le troisième indique la *position* où stocker la sortie de l'opération.

Par exemple, si votre ordinateur rencontre ``1,10,20,30``, il devrait lire les valeurs des positions `10` et `20`, additionner ces deux valeurs, puis écraser la valeur présente en position `30` avec le résultat de cette addition.

L'opcode `2` fonctionne de la même manière que l'opcode `1`, sauf que lui *multiplie* les deux entrées au lieu de les additionner. Encore une fois, les trois nombres situés après l'opcode indiquent *où* sont situées les entrées et sorties, pas leur valeurs.

Une fois que vous en avez terminé avec l'opération, *passez à la suivante* en avançant de `4` positions.

Par exemple, supposons que vous ayez le programme suivant :

```Intcode
1,9,10,3,2,3,11,0,99,30,40,50
```

Pour des raisons d'illustration, voici le même programme séparé en plusieurs lignes :

```Intcode
1,9,10,3,
2,3,11,0,
99,
30,40,50
```

Les premiers nombres, ``1,9,10,3``, sont aux positions `0`, `1`, `2` et `3`. Ensemble, ils représentent le premier opcode (`1`, l'addition), les positions de deux entrées (`9` et `10`), et la position de la sortie (`3`). Pour gérer cet opcode, vous devez tout d'abord récupérer les valeurs situées aux positions d'entrées : Ici, la position `9` contient la valeur `30`, et la position `10` contient la valeur `40`. *Additionnez* ces nombres pour obtenir `70`. Enfin, stockez cette valeur finale dans la position de sortie. Ici, la position de sortie, donnée par le nombre en position `3`, est `3`, et va donc être écrasée par le résultat. À la fin de cette opération, le code ressemble à ceci :

<pre class="Intcode"><code>1,9,10,<em>70</em>,
2,3,11,0,
99,
30,40,50</code></pre>

Avancez de `4` positions pour atteindre le prochain opcode, `2`. Cet opcode fonctionne comme le précédent, mais multiplies au lieu d'additionner. Les entrées sont aux positions `3` et `11`, et correspondent respectivement aux valeurs `70` et `50`. Multiplier ces deux valeurs donne `3500`. Le résultat est stockée en position `0`. Le code ressemble alors à ceci :

<pre class="Intcode"><code><em>3500</em>,9,10,70,
2,3,11,0,
99,
30,40,50
</code></pre>

Avancer encore une fois de `4` positions vous fait rencontrer l'opcode `99`, ce qui stoppe le programme.

Voici les états initiaux et finaux de quelques petits programmes supplémentaires :
    - ``1,0,0,0,99`` devient <code><em>2</em>,0,0,0,99</code> (``1 + 1 = 2``).
    - ``2,3,0,3,99`` devient <code>2,3,0,<em>6</em>,99</code> (``3 * 2 = 6``).
    - ``2,4,4,5,99,0`` devient <code>2,4,4,5,99,<em>9801</em></code> (``99 * 99 = 9801``).
    - ``1,1,1,4,99,5,6,0,99`` devient <code><em>30</em>,1,1,4,<em>2</em>,5,6,0,99</code>.

Une fois que vous aurez un ordinateur en état de marche, la première chose à faire sera de restaurer le programme d'appui gravitationnel (l'entrée de votre puzzle) à l'état "Alarme de programme 1202" qu'il avait juste avant que l'ancien ordinateur ne prenne feu. Pour cela, *avant d'exécuter le programme*, remplacez la valeur en position `1` par la valeur `12` et remplacez celle en position `2` par la valeur `2`. *Quelle est la valeur en position `0`* après l'arrêt du programme ?