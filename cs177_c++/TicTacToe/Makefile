CC		:= g++
CFLAGS	:= -Wall -std=c++98

TicTacToe: ModTree.o Token.o Game.o
	$(CC) $(CFLAGS) ModTree.o Token.o Game.o -o $@

ModTree.o: ModTree.h ModTree.cc
	$(CC) $(CFLAGS) -c ModTree.cc -o $@

Token.o: Token.h Token.cc
	$(CC) $(CFLAGS) -c Token.cc -o $@

Game.o: ModTree.o Token.o Game.cc
	$(CC) $(CFLAGS) -c Game.cc -o $@

clean:
	rm -rf *.o TicTacToe
