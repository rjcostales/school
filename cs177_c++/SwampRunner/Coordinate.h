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
public:
	// Constructors
	Coord();
	Coord(int, int);
	Coord(const Coord&);

	// Operators
	void operator=(Coord);
	Coord operator+(Coord);
	void operator+=(Coord);
	bool operator==(Coord);
	bool operator!=(Coord);

	friend ostream& operator<<(ostream&, const Coord&);

	// Data Member
	int x;	// made x & y public for ease
	int y;	// and more readable code.
};

#endif
