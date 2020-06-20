# --- Jour 4 : Container sécurisé ---

Vous arrivez au dépôt de carburant de Vénus et découvrez qu'il est protégé par un mot-de-passe. Les elfes l'avaient écrit sur un post-it, mais quelqu'un l'a jeté.

Cependant, ils se souviennent de quelques spécificités du mot-de-passe :

- C'est un nombre a six chiffres.
- Sa valeur est dans l'intervalle donnée par l'entrée du puzzle.
- Au moins deux chiffres adjacents sont identiques (comme `22` dans `122345`).
- De gauche à droite, la valeur d'un chiffre n'est *jamais inférieure* à celle du chiffre le précédent. Elle peut être identique ou supérieure.

Sans tenir compte de la règle de l'intervalle, on peut dire que :

- `111111` respecte les critères (la paire `11` étant un double, ne diminue jamais).
- `2234<em>50</em>` ne respecte pas les critères (la paire de chiffre `50` présente une diminution).
- `123789` ne respecte pas les critères (pas de double).

*Combien de mots-de-passe différents* respectant les critères sont disponibles dans l'intervalle donné en entrée ?