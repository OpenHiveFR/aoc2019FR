## --- Jour 14 : Stœchiométrie Spatiale ---

Alors que vous approchez les anneaux de Saturne, l'indicateur de *bas niveau de carburant* de votre vaisseau s'allume. Il n'y a pas de carburant dans les environs, mais les anneaux sont emplis de matériaux brutes. Peut-être que la *nano-usine* d'Union-Raffinerie installée dans votre vaisseau saura transformer ces matériaux en carburant.

Vous demandez à la nano-usine de vous donner une liste des *réactions* utiles pour ce processus qu'elle peut effectuer (l'entrée de votre puzzle). Chaque réaction transforme une quantité précise de *matériaux d'entrée* en une quantité précise de *matériau de sortie*. La quasi-totalité des *matériaux* sont chacun produits par une seule réaction : la seule exception est l'`ORE`, le matériau brut présent en grande quantité dans les anneaux de Saturne et qui est le matériau d'entrée du processus, n'étant donc pas produit par une réaction.

Vous avez simplement besoin de savoir combien d'*`ORE`* vous devrez récoltez avant de pouvoir construire une unité de *`FUEL`*, le carburant.

Chaque réaction est définie pour des quantités précises d'entrées et de sorties. Une réaction ne peut pas être partiellement faite, en conséquence de quoi seuls des entiers multiples de ces quantités peuvent être utilisées (par contre, il est possible d'avoir des matériaux en surplus). Par exemple, la réaction notée ``1 A, 2 B, 3 C => 2 D`` signifie qu'exactement 2 unités du matériau `D` peuvent être produits en consommant exactement 1 `A`, 2 `B` et 3 `C`. Vous pouvez faire cette réaction autant de fois que nécessaire : par exemple, vous pourriez produire 10 `D` grâce à 5 `A`, 10 `B` et 15 `C`.

Supposez que votre nano-usine sorte cette liste de réactions :

```
10 ORE => 10 A
1 ORE => 1 B
7 A, 1 B => 1 C
7 A, 1 C => 1 D
7 A, 1 D => 1 E
7 A, 1 E => 1 FUEL
```

Les deux premières réactions utilisent seulement de l'``ORE`` en entrée ; elles indiquent que vous pouvez construire autant de `A` que vous le souhaitez (par lot de 10 unités, coûtant chacun 10 `ORE`) et autant de matériau `B` que vous le souhaitez (chaque unité coûtant 1 `ORE`). Pour produire 1 `FUEL`, un total de *31* `ORE` sont requis : 1 `ORE` pour produire 1 `B`, puis 30 `ORE` supplémentaires pour produire les 7 + 7 + 7 + 7 = 28 `A` (avec 2 `A` restants en surplus donc) requis pour convertir les `B` en `C`, les `C` en `D`, les `D` en `E` et enfin les `E` en `FUEL` (30 `A` sont produits au total car la réactions les créant les crée 10 par 10).

Ou, supposez que vous ayez cette autre liste de réactions à la place :

```
9 ORE => 2 A
8 ORE => 3 B
7 ORE => 5 C
3 A, 4 B => 1 AB
5 B, 7 C => 1 BC
4 C, 1 A => 1 CA
2 AB, 3 BC, 4 CA => 1 FUEL
```

La liste des réactions ci-dessus demande *165* `ORE` pour produire 1 `FUEL` :

- Consommez 45 `ORE` pour produire 10 `A`.
- Consommez 64 `ORE` pour produire 24 `B`.
- Consommez 56 `ORE` pour produire 40 `C`.
- Consommez 6 `A`, 8 `B` pour produire 2 `AB`.
- Consommez 15 `B`, 21 `C` pour produire 3 `BC`.
- Consommez 16 `C`, 4 `A` pour produire 4 `CA`.
- Consommez 2 `AB`, 3 `BC`, 4 `CA` pour produire 1 `FUEL`.

Voici quelques autres exemples plus grands :

- *13312* `ORE` pour 1 `FUEL` :\
```
157 ORE => 5 NZVS
165 ORE => 6 DCFZ
44 XJWVT, 5 KHKGT, 1 QDVJ, 29 NZVS, 9 GPVTF, 48 HKGWZ => 1 FUEL
12 HKGWZ, 1 GPVTF, 8 PSHF => 9 QDVJ
179 ORE => 7 PSHF
177 ORE => 5 HKGWZ
7 DCFZ, 7 PSHF => 2 XJWVT
165 ORE => 2 GPVTF
3 DCFZ, 7 NZVS, 5 HKGWZ, 10 PSHF => 8 KHKGT
```
- *180697* `ORE` pour 1 `FUEL` :\
```
2 VPVL, 7 FWMGM, 2 CXFTF, 11 MNCFX => 1 STKFG
17 NVRVD, 3 JNWZP => 8 VPVL
53 STKFG, 6 MNCFX, 46 VJHF, 81 HVMC, 68 CXFTF, 25 GNMV => 1 FUEL
22 VJHF, 37 MNCFX => 5 FWMGM
139 ORE => 4 NVRVD
144 ORE => 7 JNWZP
5 MNCFX, 7 RFSQX, 2 FWMGM, 2 VPVL, 19 CXFTF => 3 HVMC
5 VJHF, 7 MNCFX, 9 VPVL, 37 CXFTF => 6 GNMV
145 ORE => 6 MNCFX
1 NVRVD => 8 CXFTF
1 VJHF, 6 MNCFX => 4 RFSQX
176 ORE => 6 VJHF
```
- *2210736* `ORE` pour 1 `FUEL` :\
```
171 ORE => 8 CNZTR
7 ZLQW, 3 BMBT, 9 XCVML, 26 XMNCP, 1 WPTQ, 2 MZWV, 1 RJRHP => 4 PLWSL
114 ORE => 4 BHXH
14 VRPVC => 6 BMBT
6 BHXH, 18 KTJDG, 12 WPTQ, 7 PLWSL, 31 FHTLT, 37 ZDVW => 1 FUEL
6 WPTQ, 2 BMBT, 8 ZLQW, 18 KTJDG, 1 XMNCP, 6 MZWV, 1 RJRHP => 6 FHTLT
15 XDBXC, 2 LTCX, 1 VRPVC => 6 ZLQW
13 WPTQ, 10 LTCX, 3 RJRHP, 14 XMNCP, 2 MZWV, 1 ZLQW => 1 ZDVW
5 BMBT => 4 WPTQ
189 ORE => 9 KTJDG
1 MZWV, 17 XDBXC, 3 XCVML => 2 XMNCP
12 VRPVC, 27 CNZTR => 2 XDBXC
15 KTJDG, 12 BHXH => 5 XCVML
3 BHXH, 2 VRPVC => 7 MZWV
121 ORE => 7 VRPVC
7 XCVML => 6 RJRHP
5 BHXH, 4 VRPVC => 5 LTCX
```

Étant donné la liste des réactions dans votre entrée de puzzle, *quel est le nombre minimum d'`ORE` requis pour produire exactement 1 `FUEL` ?