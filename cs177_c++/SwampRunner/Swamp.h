/* Raphael J. S. Costales
 * Swamp.h
 * 5/5/93
 */

#ifndef SWAMP_H
#define SWAMP_H

#include "List.h"
#include "Runner.h"
#include "Ground.h"
#include "QuickSand.h"

class Swamp
{
public:
	// Constructor & Destructor
	Swamp(Coord, List);
   ~Swamp();
	// Member Functions
	void draw();
	void getRunner(Runner *);	// put the runner in the swamp
	bool inSwamp(Coord);		// returns true if cell is in swamp
	bool isSafe(Coord);			// returns true if cell is ground
private:
	// Attributes
	Runner *mRunner;
	SCell *mSwamp[20][20];
	Coord mMax;
};

#endif
