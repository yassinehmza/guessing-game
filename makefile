# Makefile pour générer README.md automatiquement

README.md: guessinggame.sh
<TAB>@echo "# Projet : Guessing Game" > README.md
<TAB>@echo "" >> README.md
<TAB>@echo "Date d'exécution de make : $$(date '+%Y-%m-%d %H:%M:%S')" >> README.md
<TAB>@echo "" >> README.md
<TAB>@echo "Nombre de lignes dans guessinggame.sh : $$(wc -l < guessinggame.sh | tr -d ' ')" >> README.md

.PHONY: all clean
all: README.md

clean:
<TAB>@rm -f README.md
