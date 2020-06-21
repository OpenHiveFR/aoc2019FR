# --- Jour 5 : Tempête d'astéroïdes géants ---

Vous commencez à suer pendant que le vaisseau poursuit sa route vers Mercure. Les elfes vous suggèrent de faire démarrer l'air conditionné en améliorant l'ordinateur du vaisseau afin qu'il puisse prendre en charge le Terminal de Supervision de la Température.

Le TErminal de Supervision de la Température (TEST) démarre en exécutant un *programme de diagnostique* (l'entrée de votre puzzle). Le diagnostique TEST s'exécuter sur [Votre ordinateur Intcode déjà existant](https://openhivefr.github.io/aoc2019fr/day/2) après quelques modifications :

*Tout d'abord*, vous devrez ajouter *deux nouvelles instructions*:

- L'opcode `3` prend un seul entier relatif en *entrée* et le sauvegarde dans la position indiquée par son unique paramètre. Par exemple, l'instruction ``3,50`` prendrait une valeur en entrée et la sauvegarderait à l'adresse `50`.
- L'opcode `4` *sort* la valeur de son seul paramètre. Par exemple, l'instruction ``4,50`` sortirait la valeur à l'adresse `50`

Les programmes utilisant ces instructions seront accompagnés d'explications à propos de ce qui devra être connecté aux entrées et aux sorties. Le programme ``3,0,4,0,99`` sort ce qu'il reçoit en entrée, puis se stoppe.

*Ensuite*, vous devrez ajouter la prise en charge des *modes de paramètres* :

Chacun des paramètres d'une instruction est manipulé sur la base de son mode de paramètre. Pour l'instant, votre ordinateur comprends déjà le mode de paramètre `0`, *le mode positionnel*, qui conduit le paramètre a être interprété en tant que *position* : si le paramètre est `50`, sa valeur est *la valeur stockée à l'adresse mémoire `50`*. Jusqu'à maintenant, tous les paramètres ont été en mode positionnel.

À partir de maintenant, votre ordinateur de bord devra également être capable de gérer le mode de paramètre `1`, *le mode immédiat*. En mode immédiat, un paramètre est interprété en tant que *valeur* : si le paramètre est `50`, sa valeur est tout simplement `<em>50</em>`.

Les modes de paramètre sont stockés dans la même valeur que l'opcode de l'instruction. L'opcode est un nombre à deux chiffres basé uniquement sur les chiffres des unités et dizaines de cette valeur. En d'autres mots, l'opcode est les deux chiffre le plus à droite de la première valeur d'une instruction. Les modes de paramètres sont des chiffres simples, un seul par paramètre, lus de gauche à droite depuis l'opcode : le mode du premier paramètre est le chiffre des centaines, le deuxième est le chiffre des milliers, le troisième celui des dix-milliers, etc. Tout mode manquant sera considéré comme étant `0`.

Par exemple, considérons le programme ``1002,4,3,4,33``.

La première instruction, ``1002,4,3,4``, est une instruction de *multiplication* (les deux chiffre les plus à droite de la première valeur, `02`, indiquent l'opcode `2`, la multiplication). Ensuite, de droite à gauche, les modes de paramètre sont `0` (chiffre des centaines), `1` (chiffre des milliers), et `0` (chiffre de dix-milliers, non présent et donc considéré comme valant `0`):

```
ABCDE
 1002

DE - Opcode à deux chiffres,      02 == opcode 2
 C - Mode du premier paramètre,    0 == mode positionnel
 B - Mode du deuxième paramètre,   1 == mode immédiat
 A - Mode du troisième paramètre,  0 == mode positionnel,
                                        omi puisqu'étant un 0 implicite
```

Cette instruction multiplies ses deux premiers paramètres. Le premier paramètre, `4` en mode positionnel, fonctionne comme avant (sa valeur est la valeur stockée à l'emplacement `4`, ici `33`). Le deuxième paramètre, `3` en mode immédiat, a simplement pour valeur `3`. Le résultat de cette opération, ``33 * 3 = 99``, est écrit selon le troisième paramètre, `4` en mode positionnel, qui lui aussi fonctionne comme avant. (`99` est écrit à l'adresse `4`).

Les paramètres servant de destination d'écriture aux instructions ne seront *jamais en mode immédiat*.

*Enfin*, quelques notes :

- Il est important de se souvenir que le pointeur d'instruction devrait être incrémenté du nombre *nombre de valeurs dans l'instruction* après la fin d'une instruction. Après les modifications ajoutant de nouvelles instructions, ce total n'est plus toujours de `4`.
- Les entiers peuvent être négatifs : ``1101,100,-1,4,0`` est un programme valide. (faire ``100 + (-1)``, stocker le résultat en position `4`).

Le programme de diagnostique TEST démarrera en demandant à l'utilisateur l'identifiant du système à tester en exécutant une instruction d'*entrée*. Entrez-y `1`, l'identifiant de l'unité d'air conditionné du vaisseau.

Ensuite, le programme effectuera une série de tests de diagnostique attestant du bon fonctionnement de plusieurs parties de l'ordinateur Intcode, notamment des modes de paramètre. Pour chaque test, il exécutera une instruction de *sortie*, indiquant la proximité de la valeur obtenue par le test par rapport à la valeur attendue, où `0` démontre le succès d'un test. Des sorties différentes de `0` indiqueraient alors qu'une fonctionnalité ne marche pas correctement. Dans le cas où vous en obtiendriez, Vérifiez l'instruction ayant été exécutée juste avant l'instruction de sortie pour savoir laquelle a échoué.

Enfin, le programme sortira un *code de diagnostique* et se stoppera immédiatement. Cette sortie finale n'est pas une erreur : une sortie suivie immédiatement par un arrêt du programme signifie que le programme a terminé son travail. Si toutes les sorties sont de `0` à l'exception du code de diagnostique, alors le programme de diagnostique est effectué avec succès.

Après avoir entré `1` en tant que seule entrée et avoir passé tous les tests, *quel code de diagnostique le programme sort-il ?*