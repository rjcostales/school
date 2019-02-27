/* Raphael J. S. Costale
 * Ground.h
 * 5/5/93
 */

#ifndef GROUND_H
#define GROUND_H

#include <stdbool.h>
using namespace std;
#include "SCell.h"

class Ground : public SCell
{
public:
	// constructor calls parent constructor
	Ground() : SCell(' ', true) {}
};

#endif
