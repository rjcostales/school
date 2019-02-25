/* Raphael J. S. Costale
 * Coordinate.cc
 * 5/5/93
 */

#ifndef COORD_CC
#define COORD_CC

#include "Coordinate.h"

// Constructors
Coord::Coord()
{
	x = 0;
	y = 0;
}

Coord::Coord(int pX, int pY)
{	x = pX;
	y = pY;
}

// Type Conversions
Coord::Coord(const Coord& pC)
{
	x = pC.x;
	y = pC.y;
}

// Coordinate operators
void Coord::operator=(Coord pC)
{
	x = pC.x;
	y = pC.y;
}

Coord Coord::operator+(Coord pC)
{
	Coord coord;
	coord.x = x + pC.x;
	coord.y = y + pC.y;
	return coord;
}

void Coord::operator+=(Coord pC)
{
	x += pC.x;
	y += pC.y;
}

bool Coord::operator==(Coord pC)
{
	return (x == pC.x && y == pC.y);
}

bool Coord::operator!=(Coord pC)
{
	return (x != pC.x || y != pC.y);
}

// Friend operator
ostream& operator<<(ostream& pOstream, const Coord& pC)
{
	pOstream << '(' <<	pC.x <<", " << pC.y << ')';
	return pOstream;
}

#endif
