/* Raphael J. S. Costale
 * Coordinate.cc
 * 5/5/93
 */

#ifndef COORD_CC
#define COORD_CC

using namespace std;

#include "Coordinate.h"

// Friend operator
ostream& operator<<(ostream& pOstream, const Coord& pC)
{
	pOstream << '(' <<	pC.x <<", " << pC.y << ')';
	return pOstream;
}

// Coordinate operators
void Coord::operator=(Coord pC)
{
	x = pC.x;
	y = pC.y;
}



Coord Coord::operator+(Coord pC)
{
	x = x + pC.x;
	y = y + pC.y;
}



Coord Coord::operator+=(Coord pC)
{
	x = x + pC.x;
	y = y + pC.y;
}

bool Coord::operator==(Coord pC) const
{
	return (x == pC.x && y == pC.y);
}

bool Coord::operator!=(Coord pC) const
{
	return (x != pC.x || y != pC.y);
}

// Type Conversions
Coord::Coord(int pX, int pY )
{
	x = pX;
	y = pY;
}

Coord::Coord()
{
	x = 0;
	y = 0;
}

Coord::Coord(Coord &pC)
{
	x = pC.x;
	y = pC.y;
}

#endif
