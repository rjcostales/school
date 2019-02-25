/* Raphael J. S. Costale
 * SCell.h - Abstract Base Class
 * 5/5/93
 */

#ifndef SCELL_H
#define SCELL_H

#include <iostream>
using namespace std;
#include <stdbool.h>

class SCell
{
public:
// Constructor
	SCell(const char image, const bool safe)
	{
		mImage = image;
		isSafe = safe;
	}

	bool safe() { return isSafe; };	// returns true is cell can be stood on
	void draw() { cout << mImage; }

protected:
	char mImage;
	bool isSafe;
};

#endif
