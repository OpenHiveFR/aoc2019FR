## --- Partie Deux ---

L'air conditionné est en ligne ! Son air frais vous fait du bien pendant quelques temps, mais soudain les alarmes du TEST commencent à retentir. Vu que le système d'air conditionné ne peut pas renvoyer la chaleur autre part que dans le vaisseau à nouveau, il *réchauffe* en réalité l'air du vaisseau.

À la place, vous allez devoir utiliser le TEST pour déployer les [radiateurs thermiques](https://fr.wikipedia.org/wiki/Contr%C3%B4le_thermique_des_engins_spatiaux). Heureusement, le programme de diagnostique (votre entrée de puzzle) est déjà équipé pour cela. Malheureusement, votre ordinateur de Intcode ne l'est pas.

Votre ordinateur manque seulement de quelques opcodes :

- L'opcode `5` est *saute-si-vrai* : si le premier paramètre est *différent de zéro*, il assigne au pointeur d'instruction la valeur du deuxième paramètre. Sinon, il ne fait rien.
- L'opcode `6` est *saute-si-faux* : si le premier paramètre est *zéro*, il assigne au pointeur d'instruction la valeur du deuxième paramètre. Sinon, il ne fait rien.
- L'opcode `7` est *inférieur à* : si le premier paramètre est *inférieur* au second paramètre, il écrit `1` à l'adresse donnée par le troisième paramètre. Sinon, il y écrit `0`.
- L'opcode `8` est *égal à* : si le premier paramètre est *égal* au second paramètre, il écrit `1` à l'adresse donnée par le troisième paramètre. Sinon, il y écrit `0`.

Comme toutes les instructions, celles-ci nécessitent la prise en charge des *modes de paramètre* comme décrit plus tôt.

Normalement, après la fin d'une instruction, le pointeur d'instruction est incrémenté du nombre de valeurs de cette instruction. *Cependant*, si l'instruction modifie le pointeur d'instruction par une valeur, cette valeur est utilisée et le pointeur d'instruction n'est *pas automatiquement incrémenté.*

Par exemple, voici plusieurs programmes prenant une entrée, la comparant à la valeur `8`, et produisant une sortie :

- ``3,9,8,9,10,9,4,9,99,-1,8`` - Utilisant le *mode positionnel*, chercher si la valeur entrée est *égale* à `8` ; sortir `1` (si elle l'est) ou `0` (si elle ne l'est pas).
- ``3,9,7,9,10,9,4,9,99,-1,8`` - Utilisant le *mode positionnel*, chercher si la valeur entrée est *inférieure* à `8` ; sortir `1` (si elle l'est) ou `0` (si elle ne l'est pas).
- ``3,3,1108,-1,8,3,4,3,99`` - Utilisant le *mode immédiat*, chercher si la valeur entrée est *égale* à `8` ; sortir `1` (si elle l'est) ou `0` (si elle ne l'est pas).
- ``3,3,1107,-1,8,3,4,3,99`` - Utilisant le *mode immédiat*, chercher si la valeur entrée est *inférieure* à `8` ; sortir `1` (si elle l'est) ou `0` (si elle ne l'est pas).

Voici des tests de saut prenant une sortie, et sortant `0` si l'entrée était `0` ou `1` si l'entrée était différente de `0` :

- ``3,12,6,12,15,1,13,14,13,4,13,99,-1,0,1,9`` (utilisant le *mode positionnel*)
- ``3,3,1105,-1,9,1101,0,0,12,4,12,99,1`` (utilisant le *mode immédiat*)

Voici un plus grand exemple :

```Intcode
3,21,1008,21,8,20,1005,20,22,107,8,21,20,1006,20,31,
1106,0,36,98,0,0,1002,21,125,20,4,20,1105,1,46,104,
999,1105,1,46,1101,1000,1,20,4,20,1105,1,46,98,99
```

L'exemple ci-dessus utilise une instruction d'entrée pour demander un seul nombre. Le programme sortira ensuite `999` si la valeur est inférieure à `8`, `1000` si elle est égale à `8`, ou `1001` si elle est supérieure à `8`

Cette fois, quand le programme de diagnostique du TEST demandera l'identifiant du système à tester, *entrez le nombre `5`*, l'identifiant du contrôleur des radiateurs thermiques du vaisseau. cette suite de test ne sortira qu'un seul nombre, le *code de diagnostique.*

*Quel est le code de diagnostique pour le système d'identifiant `5` ?*