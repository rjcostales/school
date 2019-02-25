/* Raphael J. S. Costale
 * QuickSand.h
 * 5/5/93
 */

#ifndef QSAND_H
#define QSAND_H

#include <stdbool.h>
using namespace std;
#include "SCell.h"

class QSand : public SCell
{
public:
	QSand() : SCell('+', false) {}

};

#endif
