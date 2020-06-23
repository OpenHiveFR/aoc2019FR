## --- Jour 13 : Colis Surprise ---

Alors que vous prenez conscience de la solitude spatiale et de la perpétuellement grandissante durée de trois heures des aller-retours des messages avec la Terre, vous remarquez que la Loupiote Indicatrice de Mail Spatial clignote. Pour vous aider à garder votre santé mentale, les elfes vous ont envoyé un colis surprise.

C'est un nouveau jeu pour la [borne d'arcade](https://fr.wikipedia.org/wiki/Borne_d%27arcade) du vaisseau ! Malheureusement, la borne est *tout au bout* de l'autre côté du vaisseau. Mais il ne sera pas compliqué de vous en construire une autre, le colis surprise contient même des schéma de construction.

La borne d'arcade exécute des programmes [Intcode](https://openhivefr.github.io/aoc2019fr/day/9) comme le jeu que les elfes vous ont envoyé (l'entrée de votre puzzle). Elle a un écran primitif capable d'afficher des *tuiles* carrées sur une grille. Le logiciel affiche les tuiles grâce à des instructions de sortie : trois instructions de sortie correspondent, dans l'ordre, la position `x` de la tuile (distance depuis la bordure gauche) puis la position `y` de la tuile (distance depuis la bordure haute) et enfin l'`identifiant de tuile`. L'`identifiant de tuile` est interprété comme suit :

- `0` est une *tuile vide*. Aucun objet de jeu n'apparaît sur cette  tuile.
- `1` est une *tuile de mur*. Les murs sont des barrières indestructibles.
- `2` est une *tuile de bloc*. Les blocs sont détruits par la balle.
- `3` est une *tuile de raquette horizontale*. La raquette est indestructible.
- `4` est une *tuile de balle*. La balle bouge en diagonale et rebondit sur les objets.

Par exemple, la séquence de sortie ``1,2,3,6,5,4`` afficherait une tuile de *raquette horizontale* (a `1` emplacement de grille de la bordure gauche et a `2` emplacements de grille de la bordure haute) et une tuile de balle (a `6` emplacement de grille de la bordure gauche et a `5` emplacements de grille de la bordure haute).

Démarrez le jeu. *Combien de tuiles de blocs sont sur l'écran quand le jeu se termine ?*