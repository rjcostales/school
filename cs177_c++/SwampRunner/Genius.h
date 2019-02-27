/* Raphael J. S. Costale
 * Genius.h
 * 5/5/93
 */

#ifndef GENIUS_H
#define GENIUS_H

#include <iostream>
using namespace std;
#include "Runner.h"
#include "Swamp.h"
#include "Wit.h"

class Genius : public Wit
{
public:
	// constructor
	Genius(Swamp& swamp) : Wit(swamp) {}
	// member functions
	void draw(int isSafe) { cout << (isSafe ? 'G' : '*'); }
	void setPos(Coord);
protected:
	Coord& step(); // value returned by virtual function move
};

//	implementation
void Genius::setPos(Coord p)
{
	Runner::setPos(p);
}

Coord& Genius::step()
{
	Coord temp = mPos;
	do
	{
		mPos = temp;
		Wit::step();
	} while (!mSwamp->isSafe(mPos));	// check if step is safe

	return mPos;
}

#endif
