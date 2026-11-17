all: README.md

README.md: guessinggame.sh
	@echo "# Projet : Guessing Game" > README.md
	@echo "" >> README.md
	@echo "**Sa date de generation est :** $$(date)" >> README.md
	@echo "" >> README.md
	@echo "**Nombre de ligne du code dans le fichier guessinggame.sh:** $$(wc -l < guessinggame.sh)" >> README.md

clean:
	@rm -f README.md
