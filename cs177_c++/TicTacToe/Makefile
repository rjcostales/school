CC	:= g++

TicTacToe: ModTree.o Token.o Game.o
	$(CC) ModTree.o Token.o Game.o -o $@

ModTree.o: ModTree.h ModTree.cc
	$(CC) -c ModTree.cc -o $@

Token.o: Token.h Token.cc
	$(CC) -c Token.cc -o $@

Game.o: ModTree.o Token.o Game.cc
	$(CC) -c Game.cc -o $@

clean:
	rm -rf *.o TicTacToe
