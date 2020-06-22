# --- Partie Deux ---

Un elfe vient de se rappeler un détail important supplémentaire : les deux chiffres adjacents identiques *ne font pas partie d'un plus grand ensemble de chiffres identiques*.

Selon l'ajout de cette nouvelle règle, mais en ignorant toujours la règle de l'intervalle, on peut dire que :

- `112233` respecte les critères, car les chiffres ne diminuent jamais de gauche à droite, et tous les groupes de chiffres identiques sont exactement d'une longueur de deux chiffres.
- `123<em>444</em>` ne respecte plus les critères (La paire répétée `44` fait partie d'un groupe plus grand, `444`).
- `111122` respecte les critères (même si `1` y est répété plus de deux fois, Il garde une paire `22`).

*Combien de mots-de-passe différents* respectant les critères sont disponibles dans l'intervalle donné en entrée ?