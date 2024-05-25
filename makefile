README.md: guessinggame.sh
    echo "# Projet de devinette du nombre de fichiers" > README.md
    echo "Date et heure de la dernière compilation : $$(date)" >> README.md
    echo "Nombre de lignes de code dans guessinggame.sh : $$(wc -l < guessinggame.sh)" >> README.md

.PHONY: clean
clean:
    rm README.md

