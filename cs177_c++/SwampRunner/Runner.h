/* Raphael J. S. Costales
 * Runner.h - Abstract Base Class
 * 5/5/93
 */

#ifndef RUNNER_H
#define RUNNER_H

#include <iostream>
using namespace std;

class Runner
{
public:
	// member functions
	virtual void draw(int) = 0;
	virtual void setPos(Coord);
	Coord move();
	Coord& pos() { return mPos; }
	void statistics();
protected:
	virtual Coord& step();
	Coord mPos;		// current position
	int mAttemps;	// current attempt
	int mMoves;		// total moves
};

//	implementation
Coord& Runner::step()
{
	Coord temp;
	do
	{
		temp.x = (rand() % 3) - 1;	// pick a random offset
		temp.y = (rand() % 3) - 1;	// from (-1, -1) to (1, 1)
	} while (Coord(0, 0) == temp);	// exclude (0, 0)
	mPos += temp;					// add it to current pos
	return mPos;
}

Coord Runner::move()
{
	mMoves++;
	return step();
}

void Runner::setPos(Coord p)
{
	mAttemps++;
	mPos = p;
}

void Runner::statistics()
{
	cout << "Moves: " << mMoves << '\t';
	cout << "Attemps: " << mAttemps << endl;
}

#endif
