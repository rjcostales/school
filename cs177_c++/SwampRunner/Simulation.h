/* Raphael J. S. Costale
 * Simulation.h
 * 5/5/93
 */

#ifndef SIMULATION_H
#define SIMULATION_H

#include <iostream>
using namespace std;
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include "List.h"
#include "Runner.h"
#include "DimWit.h"
#include "HalfWit.h"
#include "Wit.h"
#include "Genius.h"
#include "Swamp.h"
#include "SCell.h"
#include "Ground.h"
#include "QuickSand.h"

#define min(x,y) ((x)<(y)?(x):(y))

class Simulation {
public:
	// constructor
	Simulation();
	// funtion
	void run(int = 50);			// max number of attemps before stopping
private:
	void draw();
	int validPath();
	// attributes
	Swamp *mSwamp;
	Coord mMax;
	Runner *mRunner;
	List mPath;
	Coord mBeg;
	Coord mEnd;
};

//	Simulation implementations
Simulation::Simulation() {
	srand(time(NULL));

	mPath.clear();

	int type, mx, my, x, y;

	cout << "Getting file..." << endl;			// read in file
	cin >> type >> my >> mx;

	while (cin >> y >> x)
		mPath.append(Coord(x, y));

	mMax = Coord(mx - 1 , my - 1);
	cout << "Swamp is " << mx << 'x' << my << endl;

	mSwamp = new Swamp(mMax, mPath);			// create the swamp

	mBeg = mPath[0];
	mEnd = mPath[mPath.length() - 1];

	if (validPath())							// check the path
		cout << "Path is valid" << endl;
	else {
		cout << "Path is invalid!!" << endl;
		exit(0);
	}

	cout << "The runner is a ";

	switch (type) {								// create the runner
	case 0:
		cout <<"DimWit" << endl;
		mRunner = new DimWit(*mSwamp);
		break;
	case 1:
		cout <<"HalfWit" << endl;
		mRunner = new HalfWit(*mSwamp);
		break;
	case 2:
		cout <<"Wit" << endl;
		mRunner = new Wit(*mSwamp);
		break;
	default:
		cout <<"Genius" << endl;
		mRunner = new Genius(*mSwamp);
	}

	mSwamp->getRunner(mRunner);					// put the runner in the swamp
}

void Simulation::run(int attemps) {
	mRunner->setPos(mBeg);						// put runner at the start
	while (attemps) {
		draw();
		mRunner->move();

		if (!mSwamp->isSafe(mRunner->getPos())) {	// the runner drowned
			draw();
			mRunner->setPos(mBeg);
			attemps--;
		}

		if (mRunner->getPos() == mEnd) {			// the runner finished
			draw();
			cout <<"Finished!" << endl;
			break;
		}
	}
}

void Simulation::draw() {
	system("clear");
	mSwamp->draw();
	mRunner->statistics();
	usleep(1000000);
}

int Simulation::validPath() {
	int l = mPath.length();
	if (l < min(mMax.x, mMax.y))
		return 0;

	return ((mBeg.x == 0) || (mBeg.x == mMax.x) ||
			(mBeg.y == 0) || (mBeg.y == mMax.y)) &&
		   ((mEnd.x == 0) || (mEnd.x == mMax.x) ||
			(mEnd.y == 0) || (mEnd.y == mMax.y));
}

//	Swamp implementation
Swamp::Swamp(Coord pMax, List pPath) {
	mMax = pMax;
	for (int i = 0; i <= mMax.y; i++) {
		for (int j = 0; j <= mMax.x; j++) {
			if ( pPath.isMember(Coord(j, i)))
				mSwamp[j][i] = new Ground();
			else
				mSwamp[j][i] = new QSand();
		}
	}
}

Swamp::~Swamp() {
	for (int i = 0; i <= mMax.y; i++) {
		for (int j = 0; j <= mMax.x; j++)
			delete mSwamp[j][i];
	}
}

void Swamp::getRunner(Runner *runner) {
	mRunner = runner;
}

void Swamp::draw() {
	for (int i = 0; i <= mMax.y; i++) {
		for (int j = 0; j <= mMax.x; j++) {
			if (mRunner->getPos() == Coord(j, i))		// draw runner
				mRunner->draw(isSafe(Coord(j, i)));	// draw splash
			else									// instead of swamp
				mSwamp[j][i]->draw();
			cout << ' ';
		}
		cout << endl;
	}
}

bool Swamp::inSwamp(Coord pC) {
	return ((pC.x >= 0) && (pC.x <= mMax.x) &&
			(pC.y >= 0) && (pC.y <= mMax.y));
}

bool Swamp::isSafe(Coord p) {
	return mSwamp[p.x][p.y]->safe();
}

#endif
