#!/bin/bash

# Fonction pour vérifier si le nombre est correct
function check_guess {
    if [[ $1 -lt $2 ]]; then
        echo "Votre estimation est trop basse. Essayez de deviner à nouveau :"
    elif [[ $1 -gt $2 ]]; then
        echo "Votre estimation est trop haute. Essayez de deviner à nouveau :"
    else
        echo "Félicitations ! Vous avez deviné le nombre correctement !"
        exit
    fi
}

# Nombre de fichiers dans le répertoire actuel
num_files=$(ls -l | grep "^-" | wc -l)

echo "Bienvenue dans le jeu de devinette du nombre de fichiers !"
echo "Essayez de deviner combien de fichiers se trouvent dans le répertoire actuel :"

# Boucle pour demander à l'utilisateur de deviner le nombre de fichiers
while true; do
    read guess
    if [[ $guess =~ ^[0-9]+$ ]]; then
        check_guess $guess $num_files
    else
        echo "Veuillez entrer un nombre entier valide :"
    fi
done

