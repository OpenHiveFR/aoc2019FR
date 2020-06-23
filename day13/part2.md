# --- Partie Deux ---

Le jeu n'a pas réellement démarré parce que vous n'avez pas insérer de pièce de 25 centimes. Hélas, vous n'en avez pas apporté. L'adresse mémoire `0` représente le nombre de pièces de 25 centimes insérées : assignez-lui la valeur `2` pour jouer gratuitement.

La borne d'arcade a un [joystick](https://fr.wikipedia.org/wiki/Joystick) pouvant bouger vers la gauche ou la droite. Le logiciel lit la position du joystick grâce à des instructions d'entrées :

- Si le joystick est en *position neutre*, envoyez `0`.
- Si le joystick est en *position gauche*, envoyez `-1`.
- Si le joystick est en *position droite*, envoyez `1`.

La borne d'arcade est également dotée d'un [afficheur a sept segments](https://fr.wikipedia.org/wiki/Afficheur_7_segments) capable d'exprimer un seul nombre représentant le score actuel du joueur. Quand une séquence de trois sorties démarre par ``X=-1, Y=0``, la troisième sortie n'est pas un identifiant de tuile ; à la place, la valeur est celle du nouveau score à faire afficher par l'afficheur à 7 segments. Par exemple, la séquence de sorties ``-1,0,12345`` ferait afficher `12345` en tant que score du joueur.

Gagnez le jeu en détruisant tous les blocs. *Quel est votre score après que le dernier bloc ait été détruit ?*