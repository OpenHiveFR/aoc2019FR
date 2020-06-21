# --- Jour 6 : Carte Universelle des Orbites ---

Vous avez atterri a la station de Carte Universelle des Orbites sur Mercure. Comme la navigation spatiale consistes souvent à effectuer des transferts d'orbite à orbite, les cartes d'orbites trouvables ici sont utiles pour trouver des routes efficace entre, par exemple, le Père Noël et vous. Vous téléchargez une carte des orbites locales (votre entrée de puzzle).

Mis à part le Centre Orbital Majeur (`COM`), chaque objet dans l'espace est en orbite autour d'exactement un autre objet. Une [orbite](https://fr.wikipedia.org/wiki/Orbite) ressemble grossièrement à ceci :

```
                  \
                   \
                    |
                    |
AAA--> o            o <--BBB
                    |
                    |
                   /
                  /
```

Dans ce diagramme, l'objet `BBB` orbite autour de `AAA`. Le chemin que `BBB` prends autour de `AAA` (dessiné avec des lignes) est seulement partiellement dessiné. Dans les données de la carte, la relation orbitale est notée ``AAA)BBB``, ce qui signifie "``BBB`` orbite autour de ``AAA``".

Avant d'utiliser les données de votre carte pour planifier votre chemin, vous allez devoir vous assurer qu'elle n'ait pas été corrompue lors du téléchargement. Pour vérifier les cartes,  la station de Carte Universelle des Orbites utilise la *somme de contrôle par comptage d'orbites* (le nombre total *d'orbites directes* et *d'orbites indirectes*).

Lorsque `A` orbite autour de `B` et que `B` orbite autour de `C`, `A` *orbite indirectement autour de* `C`. Cette chaîne n'a pas de limite de longueur : si `A` orbite autour de `B`, `B` autour de `C`, et `C` autour de `D`, alors `A` orbite aussi indirectement autour de `D`.

Par exemple, supposons que vous obteniez la carte suivante :

```
COM)B
B)C
C)D
D)E
E)F
B)G
G)H
D)I
E)J
J)K
K)L
```

La carte est graphiquement visualisable comme ceci :

```
        G - H       J - K - L
       /           /
COM - B - C - D - E - F
               \
                I
```

Dans cette représentation visuelle, quand deux objets sont connectés par une ligne, celui de droite orbite directement autour de celui de gauche.

Dès lors, il est possible de compter le nombre total d'orbites comme suit :

- `D` orbite directement autour de `C` et indirectement autour de `B` et du `COM`, pour un total de `3` orbites.
- `L` orbite directement autour de `K` et indirectement autour de `J`, `E`, `D`, `C`, `B` et du `COM`, pour un total de `7` orbites.
- Le `COM` n'orbite autour de rien.

Le nombre total d'orbites directes et indirectes dans cet exemple est `<em>42</em>`.

*Quel est le nombre total d'orbites directes et indirectes* dans les données de votre carte ?