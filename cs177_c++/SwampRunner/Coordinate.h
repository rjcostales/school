/* Raphael J. S. Costale
 * Coordinate.h - Data Type Class
 * 5/5/93
 *
 * Coordinate class consisting of (x, y) members
 */

#ifndef COORD_H
#define COORD_H

#include <iostream>

using namespace std;

class Coord
{
	friend ostream& operator<<(ostream&, const Coord&);

public:
// constructors
	Coord(int, int);
	Coord();
	Coord(Coord&);

// operators
	void operator=(Coord);
	Coord operator+(Coord);
	Coord operator+=(Coord);
	bool operator==(Coord) const;
	bool operator!=(Coord) const;

// data member
	int x;	 // made x & y public for ease
	int y;	 // and more readable code.
};

#endif
