# --- Partie Deux ---

Durant la seconde [Vérification de Statut de Lancement](https://en.wikipedia.org/wiki/Launch_status_check), l'elfe en charge de la revérification de l'équation de la fusée stoppe la séquence de lancement. Apparemment, vous avez oublié d'inclure du carburant additionnel, pour le carburant que vous venez d'ajouter.

Le carburant en lui-même nécessite du carburant, comme un module (prenez sa masse, divisez par trois, arrondissez à l'entier inférieur, et soustrayez 2.). Cependant, ce carburant supplémentaire requiert *lui aussi* du carburant, qui *lui-même* requiert du carburant, etc. Une masse qui demanderait une *quantité négative de carburant*, devrait être traitée comme *ne demandant pas de carburant* : la masse restante, s'il y en a, est à la place gérée en *souhaitant très très fort*, ce qui n'a pas de masse et est hors de considération dans ce calcul.

Ainsi, pour chaque masse de module, calculez sa quantité requise de carburant et ajoutez-la au total. Ensuite, prenez la quantité de carburant que vous venez de calculer en tant que masse d'entrée, et appliquez la même procédure jusqu'à ce que la masse requise soit de zéro, ou négative. Par exemple :

- Un module de masse ``14`` requiert ``2`` de carburant. Ce carburant n'a pas besoin de carburant supplémentaire (2 divisé par 3 et arrondi à l'entier inférieur donne ``0``, et soustraire 2 donnerait une demande en carburant négative), donc la demande en carburant totale pour ce module est toujours de ``2``.
- Au début, un module de masse ``1969`` requiert ``654`` de carburant. Ensuite, ce carburant nécessite ``216`` de carburant supplémentaire (``654 / 3 - 2``). ``216`` requiert ensuite ``70`` de carburant en plus, ce qui requiert encore ``21`` de carburant en plus, ce qui en requiert encore ``5``, ce qui ne requiert pas carburant supplémentaire. Donc, le besoin total de carburant pour un module de masse ``1969`` est de ``654 + 216 + 70 + 21 + 5 = 966``.
- Le carburant requis par un module de masse ``100756`` et son carburant requis est de : ``33583 + 11192 + 3728 + 1240 + 411 + 135 + 42 + 12 + 2 = 50346``.

*Quelle est la somme totale de carburant demandée* par tous les modules de votre vaisseau lorsque l'on prends également en compte la masse ajoutée par le carburant ? (Calculez les besoins en carburant séparément pour chaque modules, et additionnez-les tous à la fin.)