# --- Jour 1 : La tyrannie de l'équation de la fusée ---

Le Père Noël s'est retrouvé coincé à la frontière du système solaire pendant qu'il livrait des cadeaux aux d'autres planètes ! Pour calculer sa position dans l'espace avec précision, aligner correctement son moteur à distorsion et le ramener sur Terre à temps pour sauver Noël, il a besoin que vous lui ameniez **cinquante étoiles**.

Collectez les étoiles en résolvant des puzzles. Deux puzzles seront disponibles pour chaque jour du calendrier de l'avent; le second puzzle sera débloqué lorsque vous aurez réussi le premier. Chaque puzzle complété apporte **une étoile**. Bonne chance !

Les elfes vous font rapidement monter dans un vaisseau spatial, et préparent le lancement.

À la première [Vérification de Statut de Lancement](https://en.wikipedia.org/wiki/Launch_status_check), tous les elfes se signalent comme prêts, jusqu'à celui chargé du comptage de carburant. Celui-ci n'a pas encore déterminé la quantité totale de carburant requise.

La quantité de carburant requise pour lancer un *module* donné dépends de sa *masse*. En l'occurrence, pour trouver la quantité de carburant requise pour un module, prenez sa masse, divisez-la par trois, arrondissez le résultat à l'entier inférieur, et soustrayez 2.

Par exemple:
- Pour une masse de ``12``, divisez par 3 et arrondissez à l'entier inférieur pour obtenir ``4``, soustrayez ensuite 2 pour obtenir ``2``.
- Pour une masse de ``14``, diviser par 3 et arrondir à l'inférieur donne toujours ``4``, donc la quantité de carburant requise est toujours de ``2``
- Pour une masse de ``1969``, la quantité de carburant requise est ``654``.
- Pour une masse de ``100756``, la quantité de carburant requise est ``33583``.

L'elfe responsable du comptage de carburant a besoin de connaître la quantité de carburant requise totale. Pour la trouver, calculez individuellement les quantités requises pour les masses chaque module (l'entrée de votre puzzle), et ajoutez les toutes.

*Quelle est la somme des quantités de carburant requises* pour tous les modules de votre vaisseau spatial ?