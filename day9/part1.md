## --- Jour 9 : Renfort de senseur ---

Vous venez de faire vos adieux au rover redémarré et avez quitté Mars quand vous recevez un infime signal de détresse provenant de la ceinture d'astéroïdes. Ça doit venir de la station d'observation Cérès !

Afin de verrouiller ce signal, vous allez devoir renforcer vos senseurs. Les elfes vous envoient la dernière version du programme *BOOST* (Basique Opérateur Omnipotent de Systèmes à Tester).

Si le BOOST (l'entrée de votre puzzle) est capable de renforcer vos senseurs, pour des raisons de sécurité, il refusera de le faire avant que l'ordinateur sur lequel il est exécuté passe quelques vérifications pour vérifier s'il est bien un *ordinateur Intcode complet*.

[Votre ordinateur Intcode déjà existant](https://openhivefr.github.io/summercode/2020/day/9) manque d'une fonctionnalité clef : il a besoin de prendre en charge les paramètres *en mode relatif*.

Les paramètres en mode `2`, le *mode relatif*, se comportent d'une manière similaire aux paramètres en mode *positionnel* : le paramètre est interprété en tant que position. Comme en mode positionnel, les paramètres en mode relatif peuvent servir à lire ou à écrire en mémoire.

La différence la plus importante est que les paramètre en mode relatif ne sont pas définis depuis l'adresse `0`. À la place, ils sont comptés depuis une valeur appelée *base relative*. La *base relative* démarre à `0`.

L'adresse à laquelle réfère un paramètre en mode relatif est sa valeur *à laquelle on ajoute* l'actuelle *base relative*. Quand la base relative est de `0`, les paramètres modes relatif et positionnel ayant la même valeur réfèrent donc à la même adresse.

Par exemple, étant donnée une base relative de `50`, un paramètre en mode relatif valant `-7` réfère à l'adresse mémoire ``50 + (-7) = <em>43</em>``.

La base relative est modifiée avec l'instruction *décalage de base relative* :

- L'opcode `9` *ajuste la base relative* par la valeur de son seul paramètre. La base relative augmente (ou diminue, si la valeur est négative) de la valeur du paramètre.

Par exemple, si la base relative est de `2000`, alors après l'instruction ``109,19``, alors la base relative sera de `2019`. Si l'instruction suivante était ``204,-34``, alors la valeur de l'adresse `1985` serait sortie.

Votre ordinateur Intcode aura également besoin de quelques autres choses spécificités :

- La mémoire disponible de l'ordinateur devrait être bien plus grande que la longueur du programme initial. La mémoire au-delà de ce programme initial est initialisée à la valeur `0`, et on peut y écrire ou y lire des valeurs comme avec n'importe quel autre emplacement mémoire (on en peut cependant pas accéder ou écrire à une adresse négative).
- L'ordinateur devrait prendre en charge de très grands nombres. Certaines instructions au début du BOOST vérifieront ceci.

Voici quelques exemples de programmes utilisant ces fonctionnalités :

- ``109,1,204,-1,1001,100,1,100,1008,100,16,101,1006,101,0,99`` ne prends pas d'entrée et sort une [copie de lui-même](https://fr.wikipedia.org/wiki/Quine_(informatique)).
- ``1102,34915192,34915192,7,4,7,99,0`` devrait sortir un nombre à 16 chiffres.
- ``104,1125899906842624,99`` devrait sortir le grand nombre du milieu.

Le BOOST demandera une seule et unique entrée. Démarrez-le en mode test en lui fournissant l'entrée `1`. Ceci lui fera effectuer une suite de test sur chaque opcode, ressortant chaque opcode (avec les modes de paramètres lui ayant été associés) semblant être dysfonctionnels, et finira par sortir un code-clef de BOOST.

Une fois que votre ordinateur Intcode sera complètement opérationnel, le programme BOOST ne devrait pas rapporter d'opcode dysfonctionnel en s'exécutant en mode test : il devrait sortir une unique valeur, le code-clef de BOOST. *Quel code-clef de BOOST produit-il ?*