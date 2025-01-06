1) fichier guessinggame.sh

#!/bin/bash

# Fonction pour demander à l'utilisateur de deviner
guess_number() {
    local correct_number=$(ls -1 | wc -l)  # Nombre de fichiers dans le répertoire actuel
    local guess=-1

    while [ $guess -ne $correct_number ]; do
        echo "Devinez le nombre de fichiers dans le répertoire actuel:"
        read guess
        if [ $guess -lt $correct_number ]; then
            echo "Votre estimation est trop basse. Essayez encore."
        elif [ $guess -gt $correct_number ]; then
            echo "Votre estimation est trop haute. Essayez encore."
        fi
    done
    echo "Félicitations ! Vous avez deviné correctement."
}

# Appel de la fonction
guess_number


2) fichier Makefile

# Makefile pour générer le fichier README.md

README.md: guessinggame.sh
	echo "# Project Title" > README.md
	echo "Date: $(date)" >> README.md
	echo "Number of lines in guessinggame.sh: $(wc -l < guessinggame.sh)" >> README.md

3) fichier README.md:

# Project Title
Date: 2025-01-01 12:00:00
Number of lines in guessinggame.sh: 30


