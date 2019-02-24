/* Raphael J.S. Costales
 * Game.cc 3/20/93
 *
 * Main function of TicTacToe Game.	 Game uses two classes ModTree and Token
 * which communicate through member functions.	There are a couple "goto's"!
 * Oh well...
 */
#include <iostream>
using namespace std;

#include "ModTree.h"
#include "Token.h"

int main()
{
	Token X('X'); Token O('O'); Token Blank(' ');
	ModTree Computer;
	int move;

	Computer.load((char *)"data");

	cout << "Use keypad to enter moves" << endl;
	cout << " 7 | 8 | 9 " << endl;
	cout << "---+---+---" << endl;
	cout << " 4 | 5 | 6 " << endl;
	cout << "---+---+---" << endl;
	cout << " 1 | 2 | 3 " << endl;
	cout << "Enter 0 to quit" << endl << endl;

	Computer.learn();

loop:

	Blank.fill();

	while (Blank.count())
	{
		Token::print();

		do
		{
			cout << "Enter move ";
			std::cin >> move;
			if (!move) goto pass;
		}
		while (X.move(move) == 0);

		Computer.putX(move);

		if (X.win())
		{
			Computer.forget();
			Token::print();
			cout << "You win" << endl << endl;
			break;
		}

		if (!Blank.count())
		{
			Computer.learn();
			Token::print();
			cout << "Draw" << endl << endl;
			break;
		}

		O.move(Computer.getO());

		if (O.win())
		{
			Computer.learn();
			Token::print();
			cout << "You lose!!!" << endl << endl;
			break;
		}
	}

	goto loop;

pass:

	return 1;
}
