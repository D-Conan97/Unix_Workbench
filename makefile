all: README.md

README.md: guessinggame.sh
	@echo "# Peer-graded Assignment: Guessing Game" > README.md
	@echo "" >> README.md
	@echo "**Generated on:** $$(date)" >> README.md
	@echo "" >> README.md
	@echo "**Lines of code in guessinggame.sh:** $$(wc -l < guessinggame.sh)" >> README.md

clean:
	@rm -f README.md