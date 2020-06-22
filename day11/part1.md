# --- Jour 11 : Police Spatiale ---

Sur la route vers Jupiter, vous êtes [arrêté](https://www.youtube.com/watch?v=KwY28rpyKDE) par la *police spatiale*.

"Attention, appareil non-immatriculé ! Vous êtes en infraction à la Loi Spatiale ! Tout appareil se doit d'arborer un *identifiant d'enregistrement* clairement visible ! Vous avez 24 heures pour vous régulariser, ou vous serez conduits en [Prison Spatiale](https://www.youtube.com/watch?v=BVn1oQL9sWg&t=5) !"

Préférant éviter la Prison Spatiale, vous appelez les elfes sur Terre pour demander leur aide. Même si leur réponse met presque trois heures à vous parvenir, ils vous envoient des instructions pour démarrer le *robot peintre de coque d'urgence* et vous fournissent un petit [programme Intcode](https://openhivefr.github.io/aoc2019fr/day/9) (l'entrée de votre puzzle) qui lui permettra de peindre votre coque de la bonne façon.

Il n'y a qu'un seul petit problème : vous n'avez pas de robot peintre de coque d'urgence.

Vous allez devoir construire un robot peintre de coque d'urgence. Le robot doit être capable de se déplacer sur une grille de panneaux carrés sur le côté de votre vaisseau, de détecter la couleur du panneau sur lequel il est positionné, et de peindre ce même panneau en *noir* ou en *blanc* (tous les panneaux de la coque sont pour le moment *noirs*).

Le programme Intcode sera le cerveau du robot. Ce programme utilise une instruction d'entrée pour accéder à la caméra du robot : envoyez `0` si le robot est sur un panneau *noir* ou `1` si le robot est sur un panneau *blanc*. Ensuite, Le programme sortira deux valeurs :

- D'abord, il sortira une valeur indiquant *en quelle couleur peindre le panneau* sur lequel est le robot : `0` signifie qu'il doit être peint en *noir*, et `1` signifie qu'il doit être peint en *blanc*
- Ensuite, il sortira une valeur indiquant *le sens de la prochaine rotation du robot* : `0` signifie qu'il devrait tourner *de 90 degrés vers la gauche*, `1` signifie qu'il doit tourner *de 90 degrés vers la droite.

Une fois le robot tourné, il doit toujours se déplacer *d'un panneau vers l'avant*. Le robot démarre tourné *vers le haut*.

Le robot continuera ensuite de fonctionner un temps de cette manière et s'arrêtera quand il aura fini de dessiner. Ne redémarrez pas l'ordinateur Intcode dans le robot pendant ce processus.

Par exemple, supposez que le robot s'apprête à démarrer. Représentons les panneaux noirs par `.`, les panneaux blancs par `#` et le robot par `^`, `v`, `<` ou `>` selon la direction vers laquelle il est orienté. L'état initial et la région proche du robot ressemblent à ceci :

```
.....
.....
..^..
.....
.....
```

Le panneau sous le robot, caché ici, puisque le robot (`^`) est dessus, est lui aussi noir, en conséquence de quoi une demande d'entrée par le cerveau du robot devrait être satisfaite par l'envoi de la valeur `0`. Supposez que le robot finisse par sortir la valeur `1` (peindre en blanc), puis `0` (tourner à gauche). Après avoir agi selon les sorties et s'être déplacé d'un panneau vers l'avant, la région ressemble maintenant à ceci :

```
.....
.....
.<#..
.....
.....
```

La demande d'entrée doit à nouveau être satisfaite par l'envoi d'un `0`. Ensuite, le cerveau pourrait sortir `0` (peindre en noir) puis `0` (tourner à gauche) :

```
.....
.....
..#..
.v...
.....
```

Après quelques autres sorties (``1,0``, ``1,0``) :

```
.....
.....
..^..
.##..
.....
```

Le robot est maintenant de retour à son emplacement de départ, mais puisqu'il est maintenant sur un panneau blanc, la demande d'entrée sera satisfaite par un `1`. Après quelques autres sorties (``0,1``, ``1,0``, ``1,0``), la zone ressemble à ceci :

```
.....
..<#.
...#.
.##..
.....
```

Avant de déployer le robot, vous devriez probablement avoir une estimation du *nombre de panneaux qu'il peindra au moins une fois*, peu importe la couleur. Dans l'exemple ci-dessus, le robot a peint *`6` panneaux* au moins une fois (il a peint le panneau de démarrage deux fois, mais ce panneau [ne compte quand même que pour un](https://www.youtube.com/watch?v=KjsSvjA5TuE) ; De plus, il n'a jamais peint le panneau sur lequel il s'est arrêté).

Construisez un robot peintre de coque d'urgence, et faite sle exécuter le programme Intcode. *Combien de panneaux peint-il au moins une fois ?*