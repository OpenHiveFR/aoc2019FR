# --- Jour 7 : Circuit Amplificateur ---

Selon les cartes de navigation, vous allez avoir besoin d'envoyer plus d'énergie vers les propulseurs pour atteindre le Père Noël à temps. Pour ce faire, vous devrez configurer une série d'[amplificateurs](https://fr.wikipedia.org/wiki/Amplificateur_%C3%A9lectronique) déjà installés dans le vaisseau.

Cinq amplificateurs sont montés en série, chacun recevant un signal en entrée et produisant un signal en sortie. Ils sont connectés de manière à ce que le premier amplificateur envoie son signal de sortie dans l'entrée du deuxième amplificateur, la sortie du deuxième amplificateur mène à l'entrée du troisième, et ainsi de suite. La valeur d'entrée du premier amplificateur est `0`, et la sortie du dernier amplificateur mène aux propulseurs du vaisseau.

```
    O-------O  O-------O  O-------O  O-------O  O-------O
0 ->| Amp A |->| Amp B |->| Amp C |->| Amp D |->| Amp E |-> (propulseurs)
    O-------O  O-------O  O-------O  O-------O  O-------O
```

Les elfes vous ont envoyé un *logiciel de contrôle d'amplificateurs* (l'entrée de votre puzzle), un programme qui devrait tourner sur votre [ordinateur Intcode existant](https://openhivefr.github.io/aoc2019fr/day/7). Chacun de vos amplificateurs devront exécuter une copie de ce programme.

Quand une copie d'un programme démarrera sur un amplificateur, il demandera d'abord une entrée pour définir son *paramètre de phase* actuel (un entier de `0` à `4`). Chaque paramètre de phase doit utilisé *une fois ni plus ni moins*, mais les elfes ne se souviennent pas d'à quel amplificateur correspond quel paramètre de phase.

Le programme demandera ensuite une autre entrée, cette fois-ci pour obtenir le signal d'entrée de l'amplificateur. Il calculera ensuite le bon signal à sortir, et le sortira avec une instruction de sortie (si un amplificateur n'a pas encore reçu son signal d'entrée, il devra en attendre un).

Votre job ici est de *trouver le plus grand signal de sortie pouvant être envoyé vers les propulseurs* en essayant chaque combinaison de paramètres de phase possibles. Assurez-vous que la mémoire ne soit pas partagée entre les différentes copies du programme.

Par exemple, supposez que vous souhaitez essayer la séquence de paramètres de phase ``3,1,2,4,0``, ce qui demanderait de régler l'amplificateur `A` au paramètre de phase `3`, l'amplificateur `B` au paramètre `1`, `C` à `2`, `D` à `4` et `E` à `0`. Ensuite, vous pourrez déterminer le signal de sortie envoyé par l'amplificateur `E` aux propulseurs grâce aux étapes suivantes :

- Commencez par copier le logiciel de contrôle d'amplificateur qui sera exécuté par l'amplificateur `A`. En tant que première entrée, fournissez-lui le paramètre de phase `3`. Lors de sa seconde instruction d'entrée, fournissez-lui le signal d'entrée, `0`. Après quelques calculs, il utilisera une instruction de sortie pour indiquer la sortie de l'amplificateur.
- Démarrez le logiciel pour l'amplificateur `B`. Fournissez-lui d'abord son paramètre de phase (`1`) puis le signal étant sortie de l'amplificateur `A`. Il sortira ensuite un nouveau signal, destiné à `C`.
- Démarrez le logiciel pour l'amplificateur `C`. Donnez-lui son paramètre de phase (`2`) et la sortie de l'amplificateur `B`, puis récupérez son signal de sortie.
- Exécutez le logiciel de l'amplificateur `D`, donnez-lui son paramètre (`4`) et son signal d'entrée, puis récoltez son signal de sortie.
- Exécutez le logiciel de l'amplificateur `E`, donnez-lui son paramètre (`0`) et son signal d'entrée, puis récoltez le signal de sortie.

Le signal de sortie final de l'amplificateur `E` serait celui envoyé aux propulseurs. Cependant, cette séquence de paramètres de phase pourrait ne pas être la meilleure, une autre pourrait produire un signal final plus élevé à envoyer aux propulseurs.

Voici quelques exemples de programmes :
- Le signal maximal vers les propulseurs est `<em>43210</em>` (séquence de phase : ``4,3,2,1,0``) :\
```Intcode
3,15,3,16,1002,16,10,16,1,16,15,15,4,15,99,0,0
```
- Le signal maximal vers les propulseurs est `<em>54321</em>` (séquence de phase : ``0,1,2,3,4``) :\
```Intcode
3,23,3,24,1002,24,10,24,1002,23,-1,23,
101,5,23,23,1,24,23,23,4,23,99,0,0
```
- Le signal maximal vers les propulseurs est `<em>65210</em>` (séquence de phase : ``1,0,4,3,2``) :\
```Intcode
3,31,3,32,1002,32,10,32,1001,31,-2,31,1007,31,0,33,
1002,33,7,33,1,33,31,31,1,32,31,31,4,31,99,0,0,0
```

Essayez chaque combinaison des paramètres de phase sur les amplificateurs. *Quelle est le signal le plus élevé pouvant être envoyé aux propulseurs* ?