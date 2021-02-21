info:guessinggame.sh
	echo "#Title:" > README.md
	find -name guessinggame.sh >> README.md
	echo "'make' was run on:" >> README.md
	date >> README.md
	echo "Number of lines of code:" >> README.md
	wc -l guessinggame.sh | cut -d ' ' -f1 >> README.md