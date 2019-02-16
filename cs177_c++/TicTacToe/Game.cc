/* Raphael J.S. Costales
 * Game.cc #/20/93
 *
 * Main function of TicTacToe Game.	 Game uses two classes ModTree and Token
 * which communicate through member functions.	There are a couple "goto's"!
 * Oh well...
 */

#include "ModTree.h"
#include "Token.h"

int main()
{
	Token X('X'); Token O('O'); Token Blank(' ');
	ModTree Computer;
	int move;

	Computer.load("data");

	std::cout << "Use keypad to enter moves\n";
	std::cout << " 7 | 8 | 9 \n";
	std::cout << "---+---+---\n";
	std::cout << " 4 | 5 | 6 \n";
	std::cout << "---+---+---\n";
	std::cout << " 1 | 2 | 3 \n";
	std::cout << "Enter 0 to quit\n\n";

	Computer.learn();

loop:

	Blank.fill();

	while (Blank.count())
	{
		Token::print();

		do
		{
			std::cout << "Enter move ";
			std::cin >> move;
			if (!move) goto pass;
		}
		while (X.move(move) == 0);

		Computer.putX(move);

		if (X.win())
		{
			Computer.forget();
			Token::print();
			std::cout << "You win\n\n";
			break;
		}

		if (!Blank.count())
		{
			Computer.learn();
			Token::print();
			std::cout << "Draw\n\n";
			break;
		}

		O.move(Computer.getO());

		if (O.win())
		{
			Computer.learn();
			Token::print();
			std::cout << "You lose!!!\n\n";
			break;
		}
	}

	goto loop;

pass:

	return 1;
}
