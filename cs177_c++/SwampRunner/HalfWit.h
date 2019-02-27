/* Raphael J. S. Costale
 * HalfWit.h
 * 5/5/93
 */

#ifndef HALFWIT_H
#define HALFWIT_H

#include <iostream>
using namespace std;
#include "Runner.h"
#include "Swamp.h"
#include "DimWit.h"

class HalfWit : public DimWit
{
public:
	// constructor
	HalfWit(Swamp& swamp) : DimWit(swamp) {}
	// member functions
	void draw(int isSafe) { cout << (isSafe ? 'H' : '*'); }
	void setPos(Coord);
protected:
	Coord& step();	// value returned by virtual function move
	List mCurrPath;
	List mQSandCells;
};

//	implementation
void HalfWit::setPos(Coord p)
{
	mCurrPath.clear();
	mQSandCells.append(mPos);	// add to quicksand cell list
	Runner::setPos(p);
}

Coord& HalfWit::step()
{
	Coord temp = mPos;
	mCurrPath.append(mPos);
	do
	{
		mPos = temp;
		DimWit::step();
	} while (mCurrPath.isMember(mPos) ||	// check if current path or
			mQSandCells.isMember(mPos));	// previous quicksand cell

	return mPos;
}

#endif
