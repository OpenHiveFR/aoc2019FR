## --- Partie Deux ---

Maintenant, il vous suffit de trouver combien de *transferts orbitaux* sont requis pour voyager de l'orbite de Mercure (autour de laquelle orbite `YOU`, votre vaisseau) et l'orbite de la localisation actuelle du Père Noël (`SAN`)le plus efficacement possible. En somme, `YOU` et `SAN` devront après votre déplacement être en orbite autour du même objet.

Vous démarrez depuis l'objet orbité par l'objet autour duquel vos orbitez actuellement, identifié `YOU`, et devez voyager vers l'objet orbité par l'objet où le Père Noël se trouve, identifié `SAN`. Un transfert orbital vous permet de vous déplacer d'un objet quelconque jusqu'à n'importe quel objet qui l'orbitent, ou jusqu'à l'objet qu'il orbite lui-même.

Par exemple, supposons que vous ayez cette carte :

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
K)YOU
I)SAN
```

Visuellement, la carte ci-dessus peut être représentée comme ceci :

```
                          <em>YOU</em>
                         <em>/</em>
        G - H       <em>J - K</em> - L
       /           <em>/</em>
COM - B - C - <em>D - E</em> - F
               \
                <em>I - SAN</em>
```

Dans cet exemple, l'objet `YOU` (d'où vous démarrez) orbite autour de `K`, et `SAN` (où vous souhaitez vous rendre) orbite autour de `I`. Pour vous déplacer de `K` à `I`, un minimum de `4` orbites sont requises :

- De `K` à `J`
- De `J` à `E`
- De `E` à `D`
- De `D` à `I`

Après votre déplacement, la carte orbitale ressemblera à ceci :
 
```
        G - H       J - K - L
       /           /
COM - B - C - D - E - F
               \
                I - SAN
                 <em>\</em>
                  <em>YOU</em>
```

*Quel est le nombre minimum de transferts orbitaux requis* pour vous déplacer de l'objet orbité par `YOU` à celui orbité par `SAN` (Entre les objets orbités par `YOU` et `SAN`, *pas* directement entre `YOU` et `SAN`) ?