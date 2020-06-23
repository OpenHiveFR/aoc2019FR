## --- Partie Deux ---

Maintenant, vous êtes prêt à décoder l'image. L'image est rendue en empilant les couches (en alignant les pixels de même position sur chaque couche). Les chiffres indiquent la couleur du pixel : `0` corresponds au noir, `1` corresponds au blanc, et `2` corresponds à de la transparence.

Les couches sont rendues avec la première couche devant et la dernière couche en arrière-plan. Donc si une position donnée est transparente sur la première et la deuxième couche, noire sur la troisième et blanche sur la quatrième, l'image finale aura un pixel *noir* à cette position.

Par exemple, admettant une image de `2` pixels de long sur `2` pixels de haut, les données d'images `0222112222120000` correspondent à l'image suivante :

```
Layer 1: <em>0</em>2
         22

Layer 2: 1<em>1</em>
         22

Layer 3: 22
         <em>1</em>2

Layer 4: 00
         0<em>0</em>
```

Ensuite, l'image complète peut être trouvée en déterminant le pixel "le plus haut de la pile" à chaque position :

- Le pixel supérieur-gauche est *noir* puisque la couche du dessus (première couche) y est à `0`.
- Le pixel supérieur-droit est *blanc* puisque la première couche y sont à `2` (transparentes), mais la seconde y est à `1`.
- Le pixel inférieur-gauche est *blanc*, car les deux couches les plus hautes y sont à `2`, mais la troisième y est à `1`.
- Le pixel inférieur-droit est *noir*, car le seul pixel visible à cette position est à `0`, sur la couche la plus en arrière-plan.

DOnc, l'image finale ressemble à ceci :

```
01
10
```

*Quel message apparaît après avoir décodé votre image ?*