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
	Ground() : SCell(' ', true) {}
};

#endif
