## --- Partie Deux --- 

Ça ne va pas. Dans cette configuration, les amplificateurs ne peuvent pas produire un signal assez grand signal en sortie pour produire la poussée dont vous aurez besoin. Les elfes vous parlent rapidement de recâbler les amplificateurs pour former une *boucle de rétroaction* :

```
      O-------O  O-------O  O-------O  O-------O  O-------O
0 -+->| Amp A |->| Amp B |->| Amp C |->| Amp D |->| Amp E |-.
   |  O-------O  O-------O  O-------O  O-------O  O-------O |
   |                                                        |
   '--------------------------------------------------------+
                                                            |
                                                            v
                                                      (propulseurs)
```

La plupart des amplificateurs sont connectés comme ils l'étaient plus tôt, c'est-à-dire que l'amplificateur `A` a sa sortie reliée à l'entrée de l'amplificateur `B`, et ainsi de suite. *Cependant*, la sortie de l'amplificateur `E` est maintenant connecté à l'entrée de l'amplificateur `A`. Cela crée une boucle de rétroaction : le signal sera envoyé à travers les amplificateurs *plusieurs fois*.

En mode boucle de rétroaction, les amplificateurs ont besoin de *modes de phase totalement différents* : les entiers de `5` à `9`, à nouveau utilisés chacun exactement une fois. Ces réglages permettront au logiciel de contrôle d'amplificateur de prendre un signal et d'en ressortir un plusieurs fois avant de se stopper. Fournissez d'abord à chaque amplificateur son paramètre de phase, toutes les autres entrées/sorties sont destinées aux signaux.

Ne redémarrez pas le logiciel de contrôle d'amplificateur sur quelque amplificateur que ce soir durant ce processus. Chaque amplificateur devrait continuer à envoyer et à recevoir des signaux jusqu'à leurs arrêts.

Tous les signaux envoyés ou reçus pendant ce processus le seront entre paires d'amplificateurs, excepté le tout premier signal d'entré, et le tout dernier sorti. Pour démarrer le processus, un signal de `0` doit être envoyé dans `A` *une seule et unique fois*.

Au bout d'un moment, le logiciel sur les amplificateurs s'arrêtera après qu'ils aient traversé la dernière boucle. Lorsque cela arrivera, le dernier signal à sortir de `E` sera celui devant être envoyé  aux propulseurs. Votre job ici est de *trouver le plus grand signal en sortie pouvant être envoyé aux propulseurs* en utilisant les nouveaux paramètres de phase ainsi que le nouveau câblage en boucle de rétroaction.

Voici un exemple de programmes :

- Le signal maximal vers les propulseurs est <code><em>139629729</em></code> (séquence de phase : ``9,8,7,6,5``) :\
```Intcode
3,26,1001,26,-4,26,3,27,1002,27,2,27,1,27,26,
27,4,27,1001,28,-1,28,1005,28,6,99,0,0,5
```
- Le signal maximal vers les propulseurs est <code><em>18216</em></code> (séquence de phase : ``9,7,8,5,6``) :\
```Intcode
3,52,1001,52,-5,52,3,53,1,52,56,54,1007,54,5,55,1005,55,26,1001,54,
-5,54,1105,1,12,1,53,54,53,1008,54,0,55,1001,55,1,55,2,53,55,53,4,
53,1001,56,-1,56,1005,56,6,99,0,0,0,0,10
```

Essayez chaque combinaison des nouveaux paramètres de phases sur les amplificateurs montés en boucle de rétroaction. *Quel est le plus haut signal pouvant être envoyé aux propulseurs ?*