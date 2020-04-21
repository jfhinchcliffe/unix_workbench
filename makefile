README.md:
	echo '# Jasons Unix Assignment' > README.md
	echo '* Readme created at $(shell date +%Y-%m-%d:%H:%M:%S)' >> README.md
	echo '* $(shell wc -l < guessinggame.sh) lines of code in guessinggame.sh' >> README.md
clean:
	rm README.md
