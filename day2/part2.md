# --- Partie Deux ---

"Bien, le nouvel ordinateur à l'air de fonctionner correctement ! *Gardez le à portée de main* pendant cette mission, vous vous en servirez sûrement encore à nouveau. Les vrais ordinateurs Intcode implémentent beaucoup plus de fonctionnalités que celui que vous venez de construire, mais nous vous les donnerons au fur et à mesure que vous en aurez besoin."

"Maintenant, votre priorité actuelle devrait être de terminer votre appui gravitationnel autour de la Lune. Pour le succès de cette mission, nous devrions nous accorder sur une certaine terminologie concernant les parties que vous avez déjà construites."

Les programmes en Intcode sont donnés en tant que listes d'entiers. Ces valeurs sont utilisées en tant qu'état initial pour la *mémoire* de l'ordinateur. Lorsque vous exécutez un programme Intcode, assurez-vous de commencer en initialisant la mémoire de l'ordinateur avec les valeurs du programme. Une position dans la mémoire est appelée *adresse* (par exemple, la première valeur en mémoire est située à "l'adresse 0").

Les opcodes (comme `1`, `2` ou `99`) marquent le début d'une *instruction*. Les valeurs situées immédiatement après l'opcode sont appelées les *paramètres* de l'instruction. Par exemple, dans l'instruction ``1,2,3,4``, `1` est l'opcode alors que `2`, `3` et `4` sont les paramètres. L'instruction `99` contient seulement un opcode et n'a pas de paramètres.

L'adresse de l'instruction actuelle est appelée *pointeur d'instruction*. Ce pointeur démarre à `0`. Une fois une instruction terminée, le pointeur d'instruction est incrémenté par *le nombre de valeurs dans cette instruction*. Pour l'instant, jusqu'à ce que vous ajoutiez d'autres instructions à l'ordinateur, ce nombre vaut toujours `4` (`1` opcode + `3` paramètres), pour les instructions 'ajouter' et 'multiplier' (l'instruction 'stop' incrémenterait le pointeur d'instruction de `1`, mais arrête le programme à la place).

"Avec cette terminologie établie, nous sommes prêts à avancer. Pour terminer l'appui gravitationnel, vous devez *déterminer quelle paire d'entrées produit la sortie `19690720`*."

Les entrées doivent toujours être données au programme en remplaçant les valeurs aux adresses `1` et `2`, comme plus tôt. Dans ce programme, la valeur placée à l'adresse `1` est appelée *nom* tandis que la valeur placée à l'adresse `2` est appelée *verbe*. Chacune des deux valeurs entrées sont comprises entre `0` et `99` (tous deux inclus).

Une fois que le programme est stoppé, sa sortie est disponible à l'adresse `0`, encore une fois exactement comme avant. Chaque fois que vous essayez une nouvelle paire d'entrées, assurez-vous d'abord *de réinitialiser la mémoire de l'ordinateur avec les valeurs du programme*. En d'autres mots, ne réutilisez pas la mémoire d'un essai précédent.

Trouvez les entrées *nom* et *verbe* qui permettent au programme de produire la sortie `19690720`. *Quel est le résultat de ``100 * nom + verbe`` ?* Par exemple, si ``nom=12`` et ``verbe=2``, la réponse sera `1202`.