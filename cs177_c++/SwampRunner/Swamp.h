/* Raphael J. S. Costale
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
	// constructor & destructor
	Swamp(Coord, List);
   ~Swamp();
	// functions
	void draw();
	void getRunner(Runner *);	// put the runner in the swamp
	bool inSwamp(Coord);		// returns true if cell is in swamp
	bool isSafe(Coord);			// returns true if cell is ground
private:
	// attributes
	Runner *mRunner;
	SCell *mSwamp[20][20];
	Coord mMax;
};

#endif
